require './lib/ingredient'
require './lib/recipe'
require './lib/cookbook'

describe CookBook do
  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = Cookbook.new
  end

  it 'exists' do
    expect(@cookbook).to be_a(Cookbook)
  end

  it 'initializes with an empty recipes array' do
    expect(@cookbook.recipes).to eq([])
  end








end