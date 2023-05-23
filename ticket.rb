#!/usr/bin/ruby

A = 11
B = 21
ticket = Object.new

class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def price=(amount)
    if ((amount * 100).round - amount * 100).abs < 0.000001
      @price = amount
    else
      puts "The price is malformed"
    end
  end
end


def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

def ticket.venue
  return "Town Hall"
end

def ticket.performer
  return "Mark Twain"
end

def ticket.event
  return "Author's reading"
end

def ticket.price
  return 5.50
end

def ticket.seat
  return "Second Balcony, row J, seat 12"
end

def ticket.date
  return "01/02/03"
end

def ticket.available?
  returen false
end



puts "This tickte is for: #{ticket.event}, at #{ticket.venue}." + "The performer is #{ticket.performer}." + "The seat is #{ticket.seat}, " + "and it costs $#{"%.2f." % ticket.price}"

def get_request(obj)
  print "What do you want to know? "
  request = gets.chomp
  if obj.respond_to? (request)
    puts obj.__send__(request)
  else
    puts "No such request: #{request} is appreciated"
  end
end


class Person
  def set_name(str)
    @name = str
  end
  
  def get_name()
    return @name
  end
end


