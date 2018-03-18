require('minitest/autorun')
require_relative('../bar')
require_relative('../drinks')
require_relative('../patrons')

class PatronTest < MiniTest::Test

  def setup
    @patron1 = Patron.new("Simon", 2000)
    @patron2 = Patron.new("Garthak the Destroyer", 12)
  end

  def test_patron_has_name
    assert_equal("Simon", @patron1.name)
  end

  def test_patron_has_wallet
    assert_equal(2000, @patron1.wallet)
  end

end
