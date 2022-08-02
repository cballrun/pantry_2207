class Recipe
  attr_reader :name,
              :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
    ingredients_required[ingredient] += amount
  end

  def ingredients
    ingredients_required.keys
  end

  def total_calories
    ingredients_required.map do |ingredient, amount|
      ingredient.calories * amount
    end.sum
  end
  
  


  #@recipe1.ingredients_required[@ingredient1] gets to value of hash/amount of ingredient
  #@recipe.ingreidents gets an array of the ingredients
  #@recipe1.ingredients[0].calories give you the amount of calories in ingredient 2
end
