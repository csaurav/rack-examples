
# Write a Rack app that has a method which accepts a string from the command line and
# reverses the word order (rather than character order). For example, when I run my
# program as:
# $ ruby my_rack_mtd.rb "Hello World"
# In my browser window, I see: World Hello

require 'rack'


def reverse_string(string_from_terminal)
	return string_from_terminal.split(' ').reverse.join(' ')
end

def input_from_terminal
	string_from_terminal = ARGV[0]
	reverse_string string_from_terminal
end

def my_method(env)
	[200, {}, [input_from_terminal]]
end

Rack::Handler::WEBrick.run method(:my_method), :Port => 9876




