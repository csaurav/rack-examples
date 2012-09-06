# Exercise 3

class ReverseString

	def initialize
		@str = "New String"
	end

	def reverse_string
        	return @str.split(' ').reverse.join(' ')
	end
	
	def call(env)
		[200, {"content-type" => "text/html" }, [reverse_string] ]
	end

end
