#!/usr/bin/ruby

class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0

  attr_reader :make

  def self.total_count
    return @@total_count
  end
  
  def self.makes
    return @@makes
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}"
      @make = make
      @@cars[make] += 1
      @@total_count += 1
    else
      raise "No such make: #{make}"
    end
  end

  def make_mates
    @@cars[self.make]
  end
end


Car.add_make("Honda")
Car.add_make("Ford")

h1 = Car.new("Honda")
f1 = Car.new("Ford")
h2 = Car.new("Honda")

puts "Total count of cars: #{Car.total_count}"
print "Honda: "
puts h1.make_mates
print "Ford: "
puts f1.make_mates

