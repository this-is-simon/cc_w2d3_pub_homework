class Patron

  attr_reader :name
  attr_accessor :wallet

  def initialize(input_name, input_wallet)
    @name = input_name
    @wallet = input_wallet
  end

end
