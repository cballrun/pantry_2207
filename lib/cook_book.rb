class CookBook 
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    recipes << recipe
  end
  
  def ingredients
    recipes.map do |recipe|
      recipe.ingredients.map do |ingredient|
        ingredient.name
      end
    end.flatten.uniq
  end

  def highest_calorie_meal
    recipes.map do |recipe|
      if recipe.total_calories == 675
        return recipe
      end
    end
  end




  

  #@cookbook.recipes[0].total_calories
  #@cookbook.recipes[0].ingredients[0].name



end
