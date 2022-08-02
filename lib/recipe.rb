class Recipe
  attr_reader :name,
              :ingredients_required,
              :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, quantity)
    if @ingredients_required.has_key?(ingredient)
      @ingredients_required[ingredient] += quantity
    else
      @ingredients_required[ingredient] = quantity
    end
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.sum{|ingredient, quantity|ingredient.calories * quantity}
  end

end
