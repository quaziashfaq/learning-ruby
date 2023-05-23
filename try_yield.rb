#!/usr/bin/env ruby

require 'pp'

def loop_twotimes(n)
  puts 'in loop_twotimes - before yielding'
  yield
  yield
  puts 'in loop_twotimes - after yielding'
end


loop_twotimes(100) do
  puts 'imran'
  #puts n
end

def without_yield(n)
  puts n
end

without_yield(100) do
  puts 'ash'
end


class Integer
  def my_times
    c = 0
    until c == self
      yield c
      c += 1
    end
    self
  end
end

class Array
  def my_each
    self.size.my_times do |i|
      yield self[i]
    end
    self
  end
end



[10, 20, 30].my_each do |i|
  puts i
end

class Array
  def my_map
    new_array = []
    self.my_each do |i|
      new_array << yield(i) 
    end
    new_array
  end
end

pp ([10, 20, 30].map { |i| i+1 })


