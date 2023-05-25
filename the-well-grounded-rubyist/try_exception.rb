#!/usr/bin/env ruby

print "Enter a number: "
n = gets.chomp.to_i

begin
  result = 100 / n
rescue ZeroDivisionError
  puts "Maniac! Zero???"
  exit
end

puts "Result: #{result}"


