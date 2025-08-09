use regex::Regex;

pub fn case_insensitive_find_and_replace(
    text: &str,
    old: &str,
    new: &str,
) -> String {
    Regex::new(&format!("(?i){}", regex::escape(old)))
        .expect("invalid regex")
        .replace_all(text, new)
        .to_string()
}
