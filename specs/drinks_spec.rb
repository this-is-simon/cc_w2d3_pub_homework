require('minitest/autorun')
require_relative('../drinks')

class DrinksTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Martini", 6)
    @drink2 = Drink.new("Gin & Tonic", 4)
    @drink3 = Drink.new("Bottle of beer", 3)
  end

  def test_drink_has_name
    assert_equal("Martini", @drink1.name)
  end

  def test_drink_has_price
    assert_equal(6, @drink1.price)
  end

end
