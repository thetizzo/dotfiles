use clap::Subcommand;
use crate::commands::init::Init;

pub mod init;

#[derive(Debug, Subcommand)]
pub enum Commands {
    /// Initialize the environment with the essentials
    Init(Init),
    /// Install optional programs and tools
    Install {}
}