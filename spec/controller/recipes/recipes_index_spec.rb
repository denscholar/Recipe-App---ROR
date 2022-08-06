require 'rails_helper'

RSpec.describe 'Recipe view', type: :feature do
  describe 'Recipe index page' do
    before(:each) do
      @user = User.create!(email: 'esther@gmail.com', password: 'password', confirmed_at: Time.now)
      @user.save!

      visit 'users/sign_in' # root_path
      sleep(5)
      visit new_user_session_path
      fill_in 'Email', with: @user.email
      sleep(1)
      fill_in 'Password', with: @user.password
      sleep(2)
      click_button 'Log in'
      @recipe = Recipe.create!(name: 'Ground beef', preparation_time: 1, cooking_time: 1, description: 'Ground beef', user_id: @user.id)
    end
    scenario 'validates if Recipe is displayed on foods page' do
      visit '/recipes'
      expect(page).to have_content('This is the food view')
    end
  end
end
