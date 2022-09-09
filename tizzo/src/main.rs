use clap::Parser;
use crate::commands::Commands;
use crate::commands::init::Init;

mod commands;

#[derive(Parser)]
#[clap(author, version, about, long_about = None)]
struct Cli {
    #[clap(subcommand)]
    command: Commands,
}

fn main() {
    let cli = Cli::parse();

    match &cli.command {
        Commands::Init(name) => {
            Init::init(name);
        },
        Commands::Install {} => todo!(),
    }
}

#[test]
fn verify_cli() {
    use clap::CommandFactory;
    Cli::command().debug_assert()
}