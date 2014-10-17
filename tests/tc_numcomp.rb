#coding: UTF-8

require 'lib/Complejos'
require 'test/unit'

class TestCompNum < Test::Unit::TestCase

	def test_constructor
		c = Complejos.new(2, 4)
		assert((c.x == 2) && (c.y == 4))
	end

	def test_init
		assert_raise (TypeError) do
            c = Complejos.new('x', 'y')
        end
    end

    def test_operaciones
        c = Complejos.new(2, 4)
        d = c + c
        assert_equal(d.x, 4, 'Fallo en la parte real de la suma')
        assert_equal(d.y, 8, 'Fallo en la parte imaginaria de la suma')

        e = Complejos.new(1, 3)
        d = c - e
        assert_equal(d.x, 1, 'Fallo en la parte real de la resta')
        assert_equal(d.y, 1, 'Fallo en la parte imaginaria de la resta')

        d = c * e
        assert_equal(d.x, -10, 'Fallo en la parte real de la multiplicación')
        assert_equal(d.y, 10, 'Fallo en la parte imaginaria de la multiplicación')

        d = c / e
        assert_equal(d.x, 1.4, 'Fallo en la parte real de la división')
        assert_equal(d.y, -0.2, 'Fallo en la parte imaginaria de la división')

        d = e * 2
        assert_equal(d.x, 2, 'Fallo en la parte real del producto escalar')
        assert_equal(d.y, 6, 'Fallo en la parte imaginaria el producto escalar')
    end

    def test_to_s
        assert_equal(Complejos.new(2, 4).to_s, "(2,4)", 'Fallo en el formato del método to_s')
  end

end
        

        
        
