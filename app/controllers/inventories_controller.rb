class InventoriesController < ApplicationController
  def index
    @inventory_items = Inventory.all
    @current_user = User.find(1)
  end

  def show
    @inventory = Inventory.includes(:inventory_foods).find(params[:id])
  end

  def new
    @inventory = Inventory.new
  end

  def create
    puts 'Create Inventory params'
    puts inventory_params = params[:inventory]
    Inventory.create(user_id: current_user.id, name: inventory_params[:name],
                     description: inventory_params[:description])
    flash[:notice] = 'Inventory created'
    redirect_to inventories_path
  end

  def destroy
    puts params
    InventoryFood.where(inventory_id: params[:id]).destroy_all
    inventory = Inventory.find(params[:id])
    inventory.destroy
    flash[:notice] = 'Inventory has been deleted'
    redirect_to inventory_path
  end
end
