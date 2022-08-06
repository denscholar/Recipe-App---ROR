require 'rails_helper'

RSpec.describe 'Recipe Index page', type: :system do
  before :each do
    @user = User.new(email: 'thomas@mail.com', password: '121212', password_confirmation: '121212')

    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end
  it 'renders recipe index page' do
    click_link 'Recipes'
    expect(current_path).to eq('/users/1/recipes')
  end

  it 'Displays recipe list' do
    click_link 'Recipes'
    expect(page).to have_content('Recipe1')
  end

  it 'can add new recipe' do
    click_link 'Recipes'
    expect(page).to have_content('Add Recipe')
  end
end
