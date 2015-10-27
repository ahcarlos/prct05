require './Fractions'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    
    def test_simple
        assert_equal("(1/2)", Fractions.new(1,2).to_s)
        assert_equal("(1/2)", Fractions.new(2,4).to_s)
    end
end