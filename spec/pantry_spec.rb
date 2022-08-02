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


end