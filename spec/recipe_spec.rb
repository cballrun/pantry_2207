require './lib/ingredient'
require './lib/recipe'

describe Recipe do
  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  it 'exists' do
    expect(@recipe1).to be_a(Recipe)
  end

  it 'has a name' do
    expect(@recipe1.name).to eq("Mac and Cheese")
  end

  it 'initializes with an empty required ingredients hash' do
    expect(@recipe1.ingredients_required).to eq({})
  end







end
