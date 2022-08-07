require 'rails_helper'

RSpec.describe 'Inventory Show page', type: :system do
  before(:all) do
    @user = User.create!(name: 'Esther Alice', email: 'estherAlice@gmail.com', password: 'password',
                         confirmed_at: Time.now)
    @user.save!
    visit 'users/sign_in'
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    sleep(1)
    fill_in 'Password', with: @user.password
    sleep(1)
    click_button 'Log in'
    @inventory1 = Inventory.create(user_id: @user.id, name: 'Vegetables',
                                   description: 'vegetable, in the broadest sense, any kind of plant life or plant
                                        product, namely “vegetable matter”; in common, narrow usage, the term vegetable
                                        usually refers to the fresh edible portions of certain herbaceous plants—roots,
                                        stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten
                                        fresh
                                        or prepared in a number of ways, usually as a savory, rather than sweet, dish.')
    @food1 = Food.create(name: 'Potatoes', measurement_unit: 'Unit', price: 3)
    @inventory_food = InventoryFood.create(quantity: 3, inventory_id: @inventory1.id, food_id: @food1.id)
  end

  it 'I can see the inventory name' do
    visit "/inventories/#{@inventory1.id}"
    expect(page).to have_content(@inventory1.name)
  end

  it 'I can see the Add food button' do
    visit "/inventories/#{@inventory1.id}"
    expect(page).to have_content('Add food to inventory')
  end

  it 'I can see food name' do
    visit "/inventories/#{@inventory1.id}"
    expect(page).to have_content(@food1.name)
  end

  it 'When I click Add food button, it redirects me to Add Food page.' do
    visit "/inventories/#{@inventory1.id}"
    click_button 'Add food to inventory'
    expect(page).to have_content('Add Food to Inventory')
  end
end
