require('minitest/autorun')
require_relative('../bar')
require_relative('../drinks')
require_relative('../patrons')

class PatronTest < MiniTest::Test

  def setup
    @patron1 = Patron.new("Simon", 2000)
    @patron2 = Patron.new("Garthak the Destroyer", 12)

    @drink1 = Drink.new("Martini", 6)
    @drink2 = Drink.new("Gin & Tonic", 4)
    @drink3 = Drink.new("Bottle of beer", 3)

    drinks_stock = [@drink1, @drink2, @drink3]

    @bar1 = Bar.new("The Tam o'Shanter", 500, drinks_stock)
  end

  def test_patron_has_name
    assert_equal("Simon", @patron1.name)
  end

  def test_patron_has_wallet
    assert_equal(2000, @patron1.wallet)
  end

  def test_buy_a_drink
    @patron1.buy_a_drink(@bar1, @drink3)
    assert_equal(1997, @patron1.wallet)
  end

end
