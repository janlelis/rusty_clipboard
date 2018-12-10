#[macro_use]
extern crate helix;
extern crate clipboard;

use clipboard::ClipboardProvider;
use clipboard::ClipboardContext;

ruby! {
    class RustyClipboard {
        def copy(text: String) -> String {
            let mut ctx: ClipboardContext = ClipboardProvider::new().unwrap();
            ctx.set_contents(text.to_owned()).unwrap();

            match ctx.get_contents() {
               Ok(result) => return result,
               Err(_error) => {
                   panic!("Could not retrieve clipboard")
               },
           }
        }

        def paste() -> String {
            let mut ctx: ClipboardContext = ClipboardProvider::new().unwrap();
            match ctx.get_contents() {
               Ok(result) => return result,
               Err(_error) => {
                   panic!("Could not retrieve clipboard")
               },
           }
        }

        def clear() {
            let mut ctx: ClipboardContext = ClipboardProvider::new().unwrap();
            ctx.set_contents("".to_owned()).unwrap();
        }
    }
}
