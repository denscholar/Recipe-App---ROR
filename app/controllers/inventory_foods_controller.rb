class InventoryFoodsController < ApplicationController
  def index; end

  def show; end

  def new
    # puts "New Inventory params"
    # puts params
    @inventory = Inventory.find(params[:inventory_id])
    @inventory_food = InventoryFood.new
    @foods = Food.all
  end

  def create
    # puts "Create Inventory params"
    # puts params
    inventory_food_params = params[:inventory_food]
    InventoryFood.create(quantity: inventory_food_params[:quantity], inventory_id: params[:inventory_id],
                         food_id: params[:food_id])
    flash[:notice] = 'Foods added to inventory'
    redirect_to inventory_path(params[:inventory_id])
  end

  def destroy
    inventory = InventoryFood.find(params[:id])
    inventory.destroy
    flash[:notice] = 'InventoryFood has been deleted'
    redirect_to inventory_path
  end
end
