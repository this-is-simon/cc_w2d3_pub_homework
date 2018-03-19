class Patron

  attr_reader :name
  attr_accessor :wallet

  def initialize(input_name, input_wallet)
    @name = input_name
    @wallet = input_wallet
  end

  def buy_a_drink(bar, drink)
    bar.bar_can_lose_drink(drink)
    return @wallet -= drink.price
  end

end
