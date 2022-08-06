require 'rails_helper'

RSpec.describe 'Recipe', type: :system do
  before :each do
    @user = User.new(email: 'thomas@mail.com', password: '121212', password_confirmation: '121212')
    @user.save!
    @recipe = Recipe.create(name: 'Recipe1', preparation_time: 1, cooking_time: 2, description: 'Description1',
                            public: true, user_id: @user.id)
    @recipe.save
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    sleep(2)
    click_link 'Recipes'
  end

  it 'renders the recipe new page' do
    expect(current_path).to eql("/users/#{@user.id}/recipes")
  end

  it 'has a form to add a recipe' do
    expect(page).to have_content('Add Recipe')
  end

  it 'Can add recipes' do
    sleep(2)
    click_link 'Add Recipe'
    expect(current_path).to eql("/users/#{@user.id}/recipes/new")
  end
end
