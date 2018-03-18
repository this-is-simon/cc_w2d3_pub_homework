class Bar

  attr_reader :name
  attr_accessor :till, :drinks_stock

  def initialize(input_name, input_till, input_drinks_stock)
    @name = input_name
    @till = input_till
    @drinks_stock = input_drinks_stock
  end

  def bar_can_lose_drink(requested_drink)
    @drinks_stock.delete(requested_drink)
    return @drinks_stock
  end

  def serve(customer, drink)
   if @drinks.include?(drink)
     customer.buy(drink)
     @till += drink.price()
   end
 end

end
