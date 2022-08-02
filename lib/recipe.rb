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
    final_calories = 0
    @ingredients_required.each do |ingredient, quantity|
      final_calories += (ingredient.calories * quantity)
    end
    final_calories
  end

end
