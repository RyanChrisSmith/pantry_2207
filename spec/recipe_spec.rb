require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

RSpec.describe Recipe do 

  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  it 'exists' do
    expect(@recipe1).to be_a(Recipe)
  end

  it 'has attributes' do
    expect(@recipe1.name).to eq "Mac and Cheese"
  end

end