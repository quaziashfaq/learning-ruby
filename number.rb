#!/usr/bin/env ruby

class C
  def initialize(n)
    @n = n
  end

  def n
    @n
  end

  def greater(c)
    self.n > c.n
  end

  def lower(c)
    self.n < c.n
  end

  def equal(c)
    not self.greate(c) and not self.lower(c) and self.n == c.n
  end

  protected :n
end

