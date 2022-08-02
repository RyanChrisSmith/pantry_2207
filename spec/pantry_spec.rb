require './lib/ingredient'
require './lib/pantry'

RSpec.describe Pantry do 

  before :each do 
    @pantry = Pantry.new
  end

  it 'exists' do
    expect(@pantry).to be_a(Pantry)
  end



end