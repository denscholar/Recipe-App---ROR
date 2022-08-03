class InventoryFoodsController < ApplicationController
  def index; end

  def show; end

  def new; end

  def create; end

  def destroy
    inventory = InventoryFood.find(params[:id])
    inventory.destroy
    flash[:notice] = 'InventoryFood has been deleted'
    redirect_to inventory_path
  end
end
