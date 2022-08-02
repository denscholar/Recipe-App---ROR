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

  def create
    @recipe = current_user.recipes.new(recipe_params)
    @recipe.user_id = params[:user_id]

    respond_to do |format|
      if @recipe.save
        format.html do
          redirect_to user_recipe_path(@recipe.user, @recipe)
        end
      else
        format.html { redirect_to new_user_recipe_path(@recipe.user), alert: 'Recipe could not be created.' }
      end
    end
  end

  private

  def recipe_params
    params.require(:recipes).permit(:name, :preperation_time, :cooking_time, :description, :public)
  end
end
