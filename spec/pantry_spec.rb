require './lib/ingredient'
require './lib/pantry'

describe Pantry do
  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
  end

  it 'exists' do
    expect(@pantry).to be_a(Pantry)
  end

  it 'initializes with an empty stock hash' do
    expect(@pantry.stock).to eq({})
  end






end