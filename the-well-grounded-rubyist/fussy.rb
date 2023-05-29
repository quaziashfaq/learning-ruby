#!/usr/bin/env ruby

# Learning raising exception
#

def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

fussy_method(8)

begin
  fussy_method(20)
rescue ArgumentError => e
  puts "That was not an acceptable number!"
  puts "Backtrace of this exception: "
  puts e.backtrace
  puts "And here's the exception object's message: "
  puts e.message
  puts e.class
end

puts "Testing writing after exception ..."


