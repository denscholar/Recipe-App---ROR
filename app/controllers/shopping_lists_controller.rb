class ShoppingListsController < ApplicationController
  def index
    @inventories = Inventory.all
    @recipe = Recipe.find(params[:recipe_id])
  end

  def new
    puts 'params new shopping_lists'
    puts params
    @recipe = Recipe.find(params[:recipe_id])
    @inventory = Inventory.includes(:inventory_foods).find(params[:inventory_id])
    @required_food = []
    @total_food = 0
    @total_price = 0

    @recipe.recipe_foods.includes([:food]).each do |recipe_food|
      inventory_food = @inventory.inventory_foods.find_by(food_id: recipe_food.food.id)
      rfq = recipe_food.quantity
      quantity = defined?(inventory_food.quantity) ? rfq - inventory_food.quantity : rfq

      next unless quantity.positive?

      price = quantity * recipe_food.food.price
      @total_food += quantity
      @total_price += price
      @required_food.push({ name: recipe_food.food.name, quantity:, price: })
    end
  end
end
