# coding: UTF-8
class Complejos

  attr_accessor :x, :y

  def initialize(x, y)
    raise TypeError, 'Argumentos numéricos esperados' unless (x.is_a? Numeric) && (y.is_a? Numeric)
    @x, @y = x, y
  end

  def +(other)
    Complejos.new(@x + other.x, @y + other.y)
  end

  def -(other)
    Complejos.new(@x - other.x, @y - other.y)
  end

  def *(number)
    Complejos.new(@x * number, @y * number)
  end

  def -@
    Complejos.new(@x * -1, @y * -1)
  end

  def ==(other)
    (@x == other.x) && (@y == other.y)
  end

  def to_s
    "<x=#{@x}, y=#{@y}>"
  end
