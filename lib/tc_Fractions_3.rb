require './Fractions'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    
    def test_simple
        assert_equal("(1/2)", Fractions.new(1,2).to_s)
        assert_equal("(1/2)", Fractions.new(2,4).to_s)
    end
    
    def test_suma
        assert_equal([5,6], Fractions.new(1,2).suma(1,3))
        assert_equal([1,6], Fractions.new(2,4).suma(-1,3))
    end
    
    def test_resta
        assert_equal([1,12], Fractions.new(3,4).resta(2,3))
    end
    
    def test_producto
        assert_equal([2,6], Fractions.new(2,3).producto(1,2))
    end
    
    def test_division
        assert_equal([3,4], Fractions.new(2,4).division(2,3))
    end
    
    
end