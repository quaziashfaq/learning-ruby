#!/usr/bin/ruby

class Person
  attr_accessor :first_name, :middle_name, :last_name

  def whole_name
    n = first_name + " "
    n << "#{middle_name} " if middle_name
    n << last_name
    return n
  end
end

david = Person.new
david.first_name = "David"
david.last_name = "Black"

puts "Whole name: #{david.whole_name}"

david.middle_name = "Alan"

puts "Whole name: #{david.whole_name}"


