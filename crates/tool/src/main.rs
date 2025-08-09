//! A binary helper tool for the ML metadata files.

mod commands;
mod common;

use std::path::PathBuf;

use anyhow::Result;
use clap::Parser;

use crate::commands::handle_caller_replacement;

/// A command-line tool used to augment the ML metadata files.
#[derive(Clone, Debug, Parser)]
#[clap(name = "helper", term_width = 80)]
pub enum Cli {
    /// Replaces all of the callers found in the metadata files with callers
    /// derived from sequential private keys starting from 1.
    ReplaceCaller {
        /// The path of the metadata file(s).
        ///
        /// This can either be a path to a directory, in which case all of the
        /// metadata files will be discovered and have their callers replaced or
        /// it can be the path to a metadata file (JSON, Sol, or others) to run
        /// the replacement logic on.
        path: PathBuf,

        /// Controls what private key the caller replacement should start from.
        ///
        /// This is primarily useful when the caller address replacement is done
        /// in multiple phases and there's a need to then continue with it in
        /// another context or another file.
        #[clap(short, long, default_value_t = 0)]
        private_key_start: usize,
    },
}

fn main() -> Result<()> {
    let cli = Cli::try_parse()?;

    match cli {
        Cli::ReplaceCaller {
            path,
            private_key_start,
        } => {
            let highest_private_key = handle_caller_replacement(&path, private_key_start)?;
            println!("Highest private key: {highest_private_key}");
        }
    }

    Ok(())
}
