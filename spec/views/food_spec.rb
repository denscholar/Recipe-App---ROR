require 'rails_helper'

RSpec.describe 'Food view', type: :feature do
  describe 'Food index page' do
    before(:each) do
      @user = User.create!(name: 'Esther Alice', email: 'estherAlice@gmail.com', password: 'password',
                           confirmed_at: Time.now)
      @user.save!
      visit 'users/sign_in' # root_path
      visit new_user_session_path
      fill_in 'Email', with: @user.email
      sleep(1)
      fill_in 'Password', with: @user.password
      sleep(1)
      click_button 'Log in'
      @food = Food.create!(name: 'Ground beef', measurement_unit: 'kg', price: 12)
    end
    scenario 'validates if Food is displayed on foods page' do
      visit '/foods'
      expect(page).to have_content('This is the food view')
    end
    scenario 'user can create new food using button' do
      click_link 'Food'
      expect(page).to have_content('Add Food')
    end
    scenario 'New Food button redirects to New Food form' do
      click_link 'Food'
      click_link 'Add Food'
      sleep(1)
      expect(page).to have_content('Add Food here')
    end
    scenario 'new form has correct button' do
      click_link 'Food'
      click_link 'Add Food'
      expect(page).to have_content('Add Food')
      expect(page).to have_content('Back to food list')
    end
  end
end
