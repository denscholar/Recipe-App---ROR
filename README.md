## setting up rails app with postgress
rails new recipe-app--ROR --database=postgresql

CREATE USER deneliobuaz WITH PASSWORD 'admin';
ALTER USER deneliobuaz CREATEDB;



<!-- class FoodsController < ApplicationController
  def show
    @food = Food.find(id: params[:id])
  end

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      flash[:success] = 'Food created succesfully'
      redirect_to foods_path
    else
      render 'new'
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    flash[:notice] = 'Food deleted successfully'
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end -->


<!-- index -->

<h2 class="text-center mt-5">This is the food view</h2>
<div class="d-flex justify-content-end button-container my-3">
<%= link_to "Add Food", new_food_path, class: "btn btn-primary" %>
</div>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Food</th>
      <th scope="col">Measurement Unit</th>
      <th scope="col">Unit Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <% @foods.each do |food| %>
 <tr>
      <td><%= food.name %></td>
      <td><%= food.measurement_unit %></td>
      <td><%= food.price %></td>
      <td><%= link_to "Delete", food_path(food), data: { turbo_method: :delete } %></td>
    </tr>
  <% end %>
  </tbody>
</table>


<!-- new -->


<div class="col-lg-6 mx-lg-auto">
  <div class="card shadow">
    <div class="card-header">
        <h4 class="card-title text-center">Add Food here</h4>
    </div>
    <div class="card-body">
    <%= form_with(model: @food, local: true) do |f| %>
  <div class="form-group">
    <%= f.text_field :name, placeholder: "Food", autofocus: true, class: 'form-control mt-4' %>
  </div>
  <div class="form-group">
    <%= f.text_field :measurement_unit, autofocus: true, placeholder: "measurement_unit", class: 'form-control mt-3' %>
  </div>

  <div class="form-group">
    <%= f.number_field :price, autofocus: true, placeholder: "Price", autocomplete: "email", class: 'form-control mt-3' %>
  </div>

  <div class="form-group mt-3 d-flex justify-content-between">
    <%= f.submit "Add Food", class: "btn btn-primary btn-lg" %>
  <%= link_to "Back to food list", foods_path %>
  </div>
<% end %>


    </div>
  </div>
</div>
