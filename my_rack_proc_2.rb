#2nd Rack example app

# USage Example: sudo ruby my_rack_proc_2.rb

# Then in browser type http://localhost

require 'rack'

my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] }

Rack::Handler::WEBrick.run my_rack_proc
