require './lib/ingredient'
require './lib/pantry'

RSpec.describe Pantry do

  before :each do
    @pantry = Pantry.new
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
  end

  it 'exists' do
    expect(@pantry).to be_a(Pantry)
  end

  it 'has nothing in stock at initialization' do
    expect(@pantry.stock).to eq({})
  end

  it 'can check the number of items in stock' do
    expect(@pantry.stock_check(@ingredient1)).to eq 0
  end

  it 'can restock' do
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    expect(@pantry.stock_check(@ingredient1)).to eq 15
  end


end