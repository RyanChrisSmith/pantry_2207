class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
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

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.all? do |ingredient, qty|
      @stock[ingredient] >= qty
    end
  end

end
