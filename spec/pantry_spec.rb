require './lib/ingredient'
require './lib/pantry'

RSpec.describe Pantry do

  before :each do
    @pantry = Pantry.new
  end

  it 'exists' do
    expect(@pantry).to be_a(Pantry)
  end

  it 'has nothing in stock at initialization' do
    expect(@pantry.stock).to eq({})
  end

  it 'can check the number of items in stock' do
    expect(@pantry.stock_check).to eq 0
  end

  it 'can restock' do
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    expect(@pantry.stock_check).to eq 15
  end


end