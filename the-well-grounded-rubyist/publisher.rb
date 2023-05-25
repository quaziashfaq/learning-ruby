#!/usr/bin/ruby

class Publisher
  attr_accessor :publisher
end

class Magazine < Publisher
  attr_accessor :editor
end

class Ezine < Magazine
end

