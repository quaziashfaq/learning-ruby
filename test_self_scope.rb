#!/usr/bin/ruby

puts "Top Level"
puts "self is #{self}"
puts self

class C
  puts "Class definition block: "
  puts "self is #{self}"
  puts self


  def self.x
    puts "Class method C.x: "
    puts "self is #{self}"
  puts self
  end

  def m
    puts "Instance method C#m: "
    puts "self is #{self}"
  puts self
  end
end



