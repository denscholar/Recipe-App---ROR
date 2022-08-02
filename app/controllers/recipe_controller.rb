class RecipeController < ApplicationController
  def index
    @user = User.includes(:recipes).find(params[:user_id])
  end

  def show
    @user = User.includes(:recipes).find(params[:user_id])
    @recipe = @user.recipes.includes(:recipe_foods).find(params[:id])
    @current_user = current_user
  end

  def new
    @user = current_user
    @recipe = Recipe.new
  end
end
