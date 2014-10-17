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

	def *(other)
		if other.is_a? Complejos
		 	Complejos.new(((@x * other.x) - (@y * other.y)) , ((@x * other.y) + (@y * other.x)))
	  else
			Complejos.new(@x*other,@y*other)
	  end
	end 

	def /(other)
	 r = (other.x**2 + other.y**2)
	 x = Float((@x * other.x) + (@y * other.y))/r
	 y = Float((@y * other.x) - (@x * other.y))/r
	 Complejos.new(x,y)
	end

  def -@
    Complejos.new(@x * -1, @y * -1)
  end

  def ==(other)
    (@x == other.x) && (@y == other.y)
  end

  def to_s
    "(#{@x},#{@y})"
  end
end
