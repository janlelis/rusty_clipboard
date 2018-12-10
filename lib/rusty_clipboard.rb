require_relative "rusty_clipboard/version"
require "helix_runtime"

begin
  require "rusty_clipboard/native"
rescue LoadError
  warn "Unable to load rusty_clipboard/native. Please clone the repository from https://github.com/janlelis/rusty_clipboard, install the Rust compiler, and run `rake build`"
end

class ClipboardRust
end