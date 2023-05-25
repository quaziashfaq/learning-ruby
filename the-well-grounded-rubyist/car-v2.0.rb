#!/usr/bin/ruby

class Car
  @@makes = []
  @@cars = {}

  attr_reader :make

  def self.total_count
    @total_count ||= 0
  end


  def self.total_count=(n)
    @total_count = n
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

  def self.raise_total_count
    #print "Self: #{self} :: "
    self.total_count += 1
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}"
      @make = make
      @@cars[make] += 1
      #self.class.total_count += 1
      self.class.raise_total_count
    else
      raise "No such make: #{make}"
    end
  end

  def make_mates
    @@cars[self.make]
  end
end


#Car.add_make("Honda")
#Car.add_make("Ford")
#
#h1 = Car.new("Honda")
#f1 = Car.new("Ford")
#h2 = Car.new("Honda")
#
#puts "Total count of cars: #{Car.total_count}"
#print "Honda: "
#puts h1.make_mates
#print "Ford: "
#puts f1.make_mates


class Hybrid < Car
  def self.raise_total_count
    Car.raise_total_count
    self.total_count += 1
    #puts self.class.superclass
    #self.class.superclass.raise_total_count
  end
end

puts Hybrid.total_count

Hybrid.add_make("Honda")
Hybrid.add_make("Ford")
puts Hybrid.total_count


h3 = Hybrid.new("Honda")
f3 = Hybrid.new("Ford")

print "Hybrid count: "
puts Hybrid.total_count

print "Car count: "
puts Car.total_count
