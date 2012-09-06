#run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time
#is #{Time.now}"]] }


require './example_3'
run ReverseString.new

