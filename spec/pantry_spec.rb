require './lib/ingredient'
require './lib/pantry'
require './recipe'

describe Pantry do
  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient2, 8)
    @pantry = Pantry.new
  end

  it 'exists' do
    expect(@pantry).to be_a(Pantry)
  end

  it 'initializes with an empty stock hash' do
    expect(@pantry.stock).to eq({})
  end

  it 'can do a stock check with no stock' do
    expect(@pantry.stock_check(@ingredient1)).to eq(0)
  end

  it 'can restock and see how much stock there is' do 
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    expect(@pantry.stock_check(@ingredient1)).to eq(15)
    @pantry.restock(@ingredient2, 7)
    expect(@pantry.stock_check(@ingredient2)).to eq(7)
  end

  it 'can tell if it has enough ingredients for something' do
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    # require 'pry';binding.pry
    expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(false)
  end






end