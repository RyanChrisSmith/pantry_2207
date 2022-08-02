class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check
    @stock.count
  end

end
