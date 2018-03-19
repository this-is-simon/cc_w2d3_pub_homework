require('minitest/autorun')
require_relative('../bar')
require_relative('../drinks')
require_relative('../patrons')

class BarTest < MiniTest::Test

  def setup

    @patron1 = Patron.new("Simon", 2000)
    @patron2 = Patron.new("Garthak the Destroyer", 12)

    @drink1 = Drink.new("Martini", 6)
    @drink2 = Drink.new("Gin & Tonic", 4)
    @drink3 = Drink.new("Bottle of beer", 3)

    drinks_stock = [@drink1, @drink2, @drink3]

    @bar1 = Bar.new("The Tam o'Shanter", 500, drinks_stock)

  end

  def test_bar_has_name
    assert_equal("The Tam o'Shanter", @bar1.name)
  end

  def test_bar_has_array_of_drinks
    actual_result = [@drink1, @drink2, @drink3]
    expected_result = @bar1.drinks_stock
    assert_equal(actual_result, expected_result)
  end

  def test_bar_can_lose_drink_by_name
    @bar1.bar_can_lose_drink(@drink1)
    actual_result = [@drink2, @drink3]
    expected_result = @bar1.drinks_stock
    assert_equal(actual_result, expected_result)
  end

  def test_receive_money
    @bar1.receive_money(5)
    assert_equal(505, @bar1.till)
  end

  def test_bar_stock_decreases
    @patron1.buy_a_drink(@bar1, @drink3)
    assert_equal(2, @bar1.drinks_stock.length)
  end

  def test_bar_receives_patrons_money
    @patron1.buy_a_drink(@bar1, @drink3)
    assert_equal(503, @bar1.till)
  end

end
