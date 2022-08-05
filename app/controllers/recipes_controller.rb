class RecipesController < ApplicationController
  def index
    @user = User.includes(:recipes).find(current_user.id)
  end

  def show
    # @user = User.includes(:recipes).find(params[:user_id])
    @recipe = Recipe.includes(:recipe_foods).find(params[:id])
    @current_user = current_user
  end

  def new
    @user = current_user
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipe_path(@recipe.user, @recipe), notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path(@recipe.user), notice: 'Recipe was successfully deleted.'
  end

  private

  def recipe_params
    params.require(:recipes).permit(:name, :preperation_time, :cooking_time, :description, :public)
  end
end
