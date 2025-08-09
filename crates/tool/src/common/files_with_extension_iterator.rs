use std::{borrow::Cow, collections::HashSet, path::PathBuf};

pub struct FilesWithExtensionIterator {
    allowed_extensions: HashSet<Cow<'static, str>>,
    directories_to_search: Vec<PathBuf>,
    files_matching_allowed_extensions: Vec<PathBuf>,
}

impl FilesWithExtensionIterator {
    pub fn new(root_directory: PathBuf) -> Self {
        Self {
            allowed_extensions: Default::default(),
            directories_to_search: vec![root_directory],
            files_matching_allowed_extensions: Default::default(),
        }
    }

    pub fn with_allowed_extension(
        mut self,
        allowed_extension: impl Into<Cow<'static, str>>,
    ) -> Self {
        self.allowed_extensions.insert(allowed_extension.into());
        self
    }
}

impl Iterator for FilesWithExtensionIterator {
    type Item = PathBuf;

    fn next(&mut self) -> Option<Self::Item> {
        if let Some(file_path) = self.files_matching_allowed_extensions.pop() {
            return Some(file_path);
        };

        let directory_to_search = self.directories_to_search.pop()?;

        let Ok(dir_entries) = std::fs::read_dir(directory_to_search) else {
            return self.next();
        };

        for entry in dir_entries.flatten() {
            let entry_path = entry.path();
            if entry_path.is_dir() {
                self.directories_to_search.push(entry_path)
            } else if entry_path.is_file()
                && entry_path.extension().is_some_and(|ext| {
                    self.allowed_extensions.iter().any(|allowed| {
                        ext.eq_ignore_ascii_case(allowed.as_ref())
                    })
                })
            {
                self.files_matching_allowed_extensions.push(entry_path)
            }
        }

        self.next()
    }
}
