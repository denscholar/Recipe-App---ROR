class UsersController < ApplicationController
  def index
    @users = User.all
    @current_user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.includes(:recipes).find(params[:id])
  end
end