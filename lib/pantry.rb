class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    stock[ingredient]
  end

  def restock(ingredient, amount)
    stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    on_hand_hash = Hash.new(0)
    stock.map do |ingredient, amount|
      on_hand_hash[ingredient] = stock_check(ingredient)
     end
    needed_hash = Hash.new(0)
    recipe.ingredients_required.map do |ingredient, amount|
      needed_hash[ingredient] = amount
     end
     return true if (on_hand_hash.values.count >= needed_hash.values.count)
   
    end
    # on_hand_hash.map do |ingredient, amount|
    #   # needed_hash.each do |ingredient, amount|
        
    #     return true if on_hand_hash[ingredient] >= 
    #     needed_hash.map do |ingredient,amount|
    #       require 'pry';binding.pry
    #       needed_hash[ingredient]
         
    #     end
    #   end
    # end
   
    
  end

  #@pantry.stock_check(@ingredient1) to get amt of ingredient 1 in pantry
  #@recipe1.ingredients_required[@ingredient1] to get amt of ingredient required in recipe


end
