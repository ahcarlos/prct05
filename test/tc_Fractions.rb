require 'lib/Fractions'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    
  def setup
    @origen = Fractions.new(1,2)
    @unidad = Fractions.new(2,4)
  end
  
  
 
  def test_simple
    assert_equal("(1/2)", @origen.to_s)
    assert_equal("(1/1)", (@unidad * 2).to_s)
    assert_equal("(-1/2)", (-@unidad).to_s)
    assert_equal([1,1], (@origen + @unidad))
  end
  
  
  #def test_type_check
    #assert_raise(RuntimeError) {Fractions.new(1,1)}
  #end
  
  
  def test_failure
    assert_equal("(5/2)", (@origen * 5).to_s, "Producto escalar")
  end
end
