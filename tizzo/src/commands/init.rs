use clap::Args;

#[derive(Args, Debug)]
pub struct Init {
    /// Working directory name; default: `code`
    #[clap(value_parser)]
    name: Option<String>,
}

impl Init {
    fn init(&self) {
        println!("Init::init()");
        let name = &self.name;

        match name {
            Some(name) => {
                // create directory in $HOME named `name`
            },
            None => {
                // create directory in $HOME named `code`
            }
        }
    }
}
