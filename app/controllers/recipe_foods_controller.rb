class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food.recipe = @recipe
    if @recipe_food.save
      redirect_to user_recipe_path(@recipe.user, @recipe)
    else
      flash[:error] = 'Ingredient already added.'
    end
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :quantity)
  end
end