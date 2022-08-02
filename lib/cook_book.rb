class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    result = []
    @recipes.each do |recipe|
      recipe.ingredients_required.each do |ingredient|
        result << ingredient[0].name
      end
    end
    result.uniq
  end
end
