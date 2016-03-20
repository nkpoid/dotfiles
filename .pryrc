Pry.config.editor = "vim"

alias :r :require

begin
  require 'awesome_print'
rescue LoadError
end
