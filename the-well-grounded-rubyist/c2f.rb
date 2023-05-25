#!/usr/bin/ruby

#print" Hello. Please enter a celsius value: "
#celsius = gets

puts "Reading celsius temperature value from data file..."
num = File.read("temp.dat")
celsius = num.to_i

fahrenheit = (celsius * 9 / 5) + 32

#print "The result is: "
puts "Saving result to output file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close


#print fahrenheit
#puts "."

