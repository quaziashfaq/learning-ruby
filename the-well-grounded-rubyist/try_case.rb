#!/usr/bin/env ruby

print "write yes or no: "
answer = gets.chomp
case answer
when "yes"
  puts "yes"
  #exit
when "no"
  puts "no"
else
  puts "Unknown answer"
end

puts "Ended"
