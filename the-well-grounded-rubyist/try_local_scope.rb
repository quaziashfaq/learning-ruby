#!/usr/bin/ruby

class C

  def x (value_for_a, recurse=false)
    a = value_for_a
    print "Self: "
    p self

    print "Value of a: "
    p a

    if recurse
      puts "recursing by calling myself..."
      x ("Second value for a")
      print "Backup recursion: here is a: "
      puts a

    end
  end
end


