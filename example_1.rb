
=begin
	Write a Rack program that accepts an integer number from the command line. The Rack program has a method which looks at the number and then returns a string “positive”, “negative” or “zero”.
=end

STRING_OUTPUT = "The number you entered on command line isi"

ERROR_OUTPUT = "Please enter an integer number"


def process_input(number)
	if number < 0
		return "negative"
	elsif number > 0
		return "positive"
	else
		return "zero"
	end
end

def input_from_terminal
	begin
		input_number = Integer(ARGV[0])
		return "#{STRING_OUTPUT} #{process_input input_number}"
        rescue ArgumentError
      		return ERROR_OUTPUT
	end	
end


my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, input_from_terminal ] }

puts my_rack_proc.call({})

