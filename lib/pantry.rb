class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    if @stock.has_key?(ingredient)
      @stock[ingredient]
    else
      0
    end
  end

  def restock(ingredient, quantity)
    if @stock.has_key?(ingredient)
      @stock[ingredient] += quantity
    else
      @stock[ingredient] = quantity
    end
  end

end
