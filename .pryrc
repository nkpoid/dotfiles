Pry.config.editor = "vim"

alias :r :require

def require_pry name
  require name
rescue LoadError
  puts "LoadError #{name}"
end

require_pry "awesome_print"
require_pry "facets"
require_pry "securerandom"

def password(len=8)
  len = 4 if len < 4
  [*0..9, *'A'..'Z', *'a'..'z'].sample(len).join
end

