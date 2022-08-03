class InventoriesController < ApplicationController
  def index
    @inventory_items = Inventory.all
    @current_user = User.find(1)
  end

  def show
    @inventory = Inventory.includes(:inventory_foods).find(params[:id])
  end

  def new; end

  def create; end

  def destroy
    puts params
    InventoryFood.where(inventory_id: params[:id]).destroy_all
    inventory = Inventory.find(params[:id])
    inventory.destroy
    flash[:notice] = 'Inventory has been deleted'
    redirect_to inventory_path
  end
end
