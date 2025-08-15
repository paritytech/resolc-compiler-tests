//! Defines the type of the sections present in the solidity semantic tests.

use std::{collections::VecDeque, path::PathBuf, sync::LazyLock};

use anyhow::{Context, Result, anyhow, bail};
use regex::Regex;
use revive_dt_common::define_wrapper_type;

use super::test_configuration::TestConfiguration;

define_wrapper_type! {
    /// A wrapper type for a collection of test sections from the Solidity
    /// semantic tests.
    #[derive(Clone, Debug, PartialEq, Eq)]
    pub struct SemanticTestSections(Vec<SemanticTestSection>);
}

impl SemanticTestSections {
    pub fn parse_source_into_sections(source: impl AsRef<str>) -> Result<Self> {
        let mut sections = VecDeque::<SemanticTestSection>::new();
        sections.push_back(SemanticTestSection::SourceCode {
            file_name: None,
            content: Default::default(),
        });

        for line in source.as_ref().split('\n') {
            if let Some(new_section) = sections
                .back_mut()
                .expect("Impossible case - we have at least one item in the sections")
                .append_line(line)?
            {
                sections.push_back(new_section);
            }
        }

        let first_section = sections
            .front()
            .expect("Impossible case - there's always at least one section");
        let remove_first_section = match first_section {
            SemanticTestSection::SourceCode { file_name, content } => {
                file_name.is_none() && content.trim().is_empty()
            }
            SemanticTestSection::ExternalSource { .. }
            | SemanticTestSection::TestConfiguration { .. }
            | SemanticTestSection::TestInputs { .. } => false,
        };
        if remove_first_section {
            sections.pop_front();
        }

        Ok(Self(sections.into_iter().collect()))
    }

    pub fn main_contract_ident_and_path(
        &self,
    ) -> Option<(Option<&PathBuf>, String)> {
        static REGEX: LazyLock<Regex> = LazyLock::new(|| {
            Regex::new(r"(?m)^\s*(?:contract|library)\s+([A-Za-z0-9_]+)")
                .expect("valid regex for contract identifier")
        });

        let (file_name, final_source_code) =
            self.0.iter().rev().find_map(|section| match section {
                SemanticTestSection::SourceCode { file_name, content } => {
                    Some((file_name, content))
                }
                SemanticTestSection::ExternalSource { .. }
                | SemanticTestSection::TestConfiguration { .. }
                | SemanticTestSection::TestInputs { .. } => None,
            })?;

        let captures =
            REGEX.captures_iter(final_source_code).collect::<Vec<_>>();
        let last_capture = captures.last()?;
        last_capture
            .get(1)
            .map(|m| m.as_str().to_string())
            .map(|ident| (file_name.as_ref(), ident))
    }
}

/// This enum describes the various sections that a semantic test can contain.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum SemanticTestSection {
    /// A source code section that consists of Solidity code.
    ///
    /// Source code sections might have a file name and they might not. Take the following section
    /// as an example which doesn't contain a filename
    ///
    /// ```solidity
    /// contract C {
    ///     bytes data;
    ///     function () pure returns (bytes memory) f;
    ///     constructor() {
    ///         data = M.longdata();
    ///         f = M.longdata;
    ///     }
    ///     function test() public view returns (bool) {
    ///         return keccak256(data) == keccak256(f());
    ///     }
    /// }
    /// ```
    ///
    /// The above will translate into this enum variant and without a defined filename for the code.
    /// However, the following will translate into this variant of the enum with a defined file name
    ///
    /// ```solidity
    /// ==== Source: main.sol ====
    /// contract C {
    ///     bytes data;
    ///     function () pure returns (bytes memory) f;
    ///     constructor() {
    ///         data = M.longdata();
    ///         f = M.longdata;
    ///     }
    ///     function test() public view returns (bool) {
    ///         return keccak256(data) == keccak256(f());
    ///     }
    /// }
    /// ```
    ///
    /// This is because of the use of the `Source` directive at the start of the section.
    ///
    /// Note the following: All tests will be run on the last declared contract in the semantic test
    /// and therefore the order of the contracts matters.
    SourceCode {
        file_name: Option<PathBuf>,
        content: String,
    },

    /// An external source section from the solidity semantic tests.
    ///
    /// External source sections from the solidity semantic tests are the simplest sections out of
    /// them all. They look like the following:
    ///
    /// ```solidity
    /// ==== ExternalSource: _prbmath/PRBMathSD59x18.sol ====
    /// ```
    ///
    /// And they can be thought of as a directive to the compiler to include these contracts when
    /// compiling the test contract.
    ExternalSource {
        alias: Option<PathBuf>,
        path: PathBuf,
    },

    /// A test configuration section
    ///
    /// This section contains various configuration and filters that are used for the tests and its
    /// always the section that comes right before the actual tests. This section looks like the
    /// following:
    ///
    /// ```solidity
    /// // ====
    /// // ABIEncoderV1Only: true
    /// // compileViaYul: false
    /// // ----
    /// ```
    TestConfiguration { configuration: TestConfiguration },

    /// A test inputs section.
    ///
    /// This section consists of all of the lines that make up the test inputs or the test steps
    /// which is the final section found in the semantic test files. This section looks like the
    /// following:
    ///
    /// ```solidity
    /// // ----
    /// // f1() -> 0x20, 0x40, 0x20, 0
    /// // f2(string): 0x20, 0 -> 0x20, 0x40, 0x20, 0
    /// // f2(string): 0x20, 0, 0 -> 0x20, 0x40, 0x20, 0
    /// // g1() -> 32, 0
    /// // g2(string): 0x20, 0 -> 0x20, 0
    /// // g2(string): 0x20, 0, 0 -> 0x20, 0
    /// ```
    TestInputs { lines: Vec<String> },
}

impl SemanticTestSection {
    const SOURCE_SECTION_MARKER: &str = "==== Source:";
    const EXTERNAL_SOURCE_SECTION_MARKER: &str = "==== ExternalSource:";
    const TEST_CONFIGURATION_SECTION_MARKER: &str = "// ====";
    const TEST_INPUTS_SECTION_MARKER: &str = "// ----";

    /// Appends a line to a semantic test section.
    ///
    /// This method takes in the current section and a new line and attempts to append it to parse
    /// it and append it to the current section. If the line is found to be the start of a new
    /// section then no changes will be made to the current section and instead the line will be
    /// interpreted according to the rules of new sections.
    pub fn append_line(
        &mut self,
        line: impl AsRef<str>,
    ) -> Result<Option<Self>> {
        static COMMENT_REPLACEMENT_REGEX: LazyLock<Regex> =
            LazyLock::new(|| Regex::new("#.*#$").unwrap());

        let line = line.as_ref();
        if line.is_empty() {
            Ok(None)
        } else if let Some(source_path) =
            line.strip_prefix(Self::SOURCE_SECTION_MARKER)
        {
            let source_code_file_path = source_path
                .trim()
                .split(' ')
                .next()
                .context("Failed to find the source code file path")?;
            Ok(Some(Self::SourceCode {
                file_name: Some(PathBuf::from(source_code_file_path)),
                content: Default::default(),
            }))
        } else if let Some(external_source_path) =
            line.strip_prefix(Self::EXTERNAL_SOURCE_SECTION_MARKER)
        {
            let source_code_file_path = external_source_path
                .trim()
                .split(' ')
                .next()
                .context("Failed to find the source code file path")?;
            let mut splitted = source_code_file_path.split("=");

            match (splitted.next(), splitted.next()) {
                (Some(source_code_file_path), None) => {
                    Ok(Some(Self::ExternalSource {
                        path: PathBuf::from(source_code_file_path),
                        alias: None,
                    }))
                }
                (Some(alias), Some(source_code_file_path)) => {
                    Ok(Some(Self::ExternalSource {
                        path: PathBuf::from(source_code_file_path),
                        alias: PathBuf::from(alias).into(),
                    }))
                }
                _ => bail!("More than one space found in an external source"),
            }
        } else if line == Self::TEST_CONFIGURATION_SECTION_MARKER {
            Ok(Some(Self::TestConfiguration {
                configuration: Default::default(),
            }))
        } else if line == Self::TEST_INPUTS_SECTION_MARKER {
            Ok(Some(Self::TestInputs {
                lines: Default::default(),
            }))
        } else {
            match self {
                SemanticTestSection::SourceCode { content, .. } => {
                    content.push('\n');
                    content.push_str(line);
                    Ok(None)
                }
                SemanticTestSection::ExternalSource { .. } => {
                    Ok(Some(Self::SourceCode {
                        file_name: None,
                        content: line.to_owned(),
                    }))
                }
                SemanticTestSection::TestConfiguration { configuration } => {
                    let line = line
                        .strip_prefix("//")
                        .with_context(|| {
                            format!("Line doesn't contain test configuration prefix: {line}")
                        })?
                        .trim();
                    let mut splitted = line.split(':');
                    let key = splitted
                        .next()
                        .context("Failed to find the key")?
                        .trim();
                    let value = splitted
                        .next()
                        .context("Failed to find the value")?
                        .trim();
                    configuration.with_config(key, value)?;
                    Ok(None)
                }
                SemanticTestSection::TestInputs { lines } => {
                    let line = line
                        .strip_prefix("//")
                        .ok_or_else(|| {
                            anyhow!(
                                "Line doesn't contain test input prefix: {line}"
                            )
                        })
                        .map(str::trim)?;
                    let line = COMMENT_REPLACEMENT_REGEX.replace_all(line, "");
                    if !line.starts_with('#')
                        && !line.chars().all(|char| char.is_whitespace())
                    {
                        lines.push(line.to_string());
                    }
                    Ok(None)
                }
            }
        }
    }
}

#[cfg(test)]
mod test {
    use std::fs::read_to_string;

    use indoc::indoc;
    use revive_dt_common::iterators::*;

    use super::*;

    #[test]
    fn parses_a_simple_file_correctly() {
        // Arrange
        const SIMPLE_FILE: &str = indoc!(
            r#"
            ==== Source: main.sol ====
            contract C {
                function f() public pure returns (uint) {
                    return 1;
                }
            }
            // ====
            // compileViaYul: true
            // ----
            // f() -> 1
            "#
        );

        // Act
        let sections =
            SemanticTestSections::parse_source_into_sections(SIMPLE_FILE)
                .expect("Failed to parse");

        // Assert
        assert_eq!(
            sections.into_inner(),
            vec![
                SemanticTestSection::SourceCode {
                    file_name: Some("main.sol".into()),
                    content: "\ncontract C {\n    function f() public pure returns (uint) {\n        return 1;\n    }\n}".to_string()
                },
                SemanticTestSection::TestConfiguration {
                    configuration: TestConfiguration { compile_via_yul: true.into(), ..Default::default() },
                },
                SemanticTestSection::TestInputs {
                    lines: vec!["f() -> 1".to_string()]
                }
            ]
        )
    }

    #[test]
    fn parses_a_complex_file_correctly() {
        // Arrange
        const COMPLEX_FILE: &str = indoc!(
            r#"
            ==== Source: main.sol ====
            import "./lib.sol";
            contract C {
                function f() public pure returns (uint) {
                    return Lib.f();
                }
            }
            ==== Source: lib.sol ====
            library Lib {
                function f() internal pure returns (uint) {
                    return 1;
                }
            }
            // ====
            // compileViaYul: true
            // ----
            // # This is a comment
            // f() -> 1
            "#
        );

        // Act
        let sections =
            SemanticTestSections::parse_source_into_sections(COMPLEX_FILE)
                .expect("Failed to parse");

        // Assert
        assert_eq!(
            sections.into_inner(),
            vec![
                SemanticTestSection::SourceCode {
                    file_name: Some("main.sol".into()),
                    content: "\nimport \"./lib.sol\";\ncontract C {\n    function f() public pure returns (uint) {\n        return Lib.f();\n    }\n}".to_string()
                },
                SemanticTestSection::SourceCode {
                    file_name: Some("lib.sol".into()),
                    content: "\nlibrary Lib {\n    function f() internal pure returns (uint) {\n        return 1;\n    }\n}".to_string()
                },
                SemanticTestSection::TestConfiguration {
                    configuration: TestConfiguration { compile_via_yul: true.into(), ..Default::default() },
                },
                SemanticTestSection::TestInputs {
                    lines: vec!["f() -> 1".to_string()]
                }
            ]
        )
    }

    #[test]
    fn test() {
        // Arrange
        let path = "../../fixtures/solidity/ethereum";
        let files =
            FilesWithExtensionIterator::new(path).with_allowed_extension("sol");

        for file in files {
            let content = read_to_string(&file).unwrap();

            // Act
            let sections =
                SemanticTestSections::parse_source_into_sections(content);

            // Assert
            assert!(
                sections.is_ok(),
                "Failed to parse sections in {} with {:?}",
                file.display(),
                sections
            );
            let sections = sections.unwrap();

            if !sections.iter().any(|section| {
                matches!(section, SemanticTestSection::TestInputs { .. })
            }) {
                continue;
            }

            assert!(
                sections.main_contract_ident_and_path().is_some(),
                "No main contract found in semantic test in {}",
                file.display()
            );
            println!("✅ Succeeded {path:?}");
        }
    }
}
