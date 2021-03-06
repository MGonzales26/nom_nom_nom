class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    if @stock[ingredient] == nil
      0
    else
      @stock[ingredient]
    end
  end

  def restock(ingredient, quantity)
    if @stock[ingredient] == nil
      @stock[ingredient] = quantity
    else
      @stock[ingredient] += quantity
    end
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.all? do |ingredient, ammount|
      stock_check(ingredient) >= ammount
    end
  end
end