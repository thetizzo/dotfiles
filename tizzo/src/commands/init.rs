use std::fs;
use std::env;
use std::path::PathBuf;
use clap::Args;

#[derive(Args, Debug)]
pub struct Init {
    /// Working directory name
    #[clap(value_parser, default_value_t = String::from("code"))]
    name: String,
}

impl Init {
    pub fn init(&self) -> String {
        let name = &self.name;
        let home_dir = PathBuf::from(env::var_os("HOME").unwrap());

        // create directory in $HOME named `name`
        match fs::create_dir(home_dir.join(name)) {
            Ok(()) => "Created working directory!".to_string(),
            Err(error) => panic!("Failed to create working directory: {error}"),
        }
    }
}
