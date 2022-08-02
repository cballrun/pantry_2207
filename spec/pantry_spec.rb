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

  it 'can do a stock check with no stock' do
    expect(@pantry.stock_check(@ingredient_1)).to eq(0)
  end

  it 'can restock and see how much stock there is' do 
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    expect(@pantry.stock_check(@ingredient_1)).to eq(15)
  end






end