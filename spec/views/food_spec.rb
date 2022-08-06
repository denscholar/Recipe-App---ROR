require 'rails_helper'

RSpec.describe 'Food view', type: :feature do
  describe 'Food index page' do
    before(:each) do
      @user = User.new(email: 'pepe@mail.com', password: '121212', password_confirmation: '121212')
      @user.save!
      visit root_path
      sleep(5)
      visit new_user_session_path
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Log in'

      @food = Food.create!(name: 'Ground beef', measurement_unit: 'kg', price: 12)
    end

    scenario 'validates if Food is displayed on foods page' do
      visit "/foods"
      expect(page).to have_content('Foods')
    end

    scenario 'user can create new food using button' do
      visit "/foods"
      expect(page).to have_content('New food')
    end

    scenario 'New Food button redirects to New Food form' do
      visit "/foods"
      click_link 'New food'
      sleep 1.5
      expect(page).to have_content('Price')
    end
  end

  describe 'New food form page' do
    before(:each) do
      @user = User.create!(name: 'Esther Alice', email: 'estherAlice@gmail.com', password: 'password',
                           confirmed_at: Time.now)
      @food = Food.create!( name: 'Ground beef', measurement_unit: 'kg', price: 12)

      visit 'users/sign_in'
      fill_in 'Email', with: 'estherAlice@gmail.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      visit "/foods/new"
    end

    scenario 'form has correct fields' do
      expect(page).to have_content('Name')
      expect(page).to have_content('Measurement unit')
      expect(page).to have_content('Price')
    end

    scenario 'users can create create food' do
      fill_in 'Name', with: 'bannann'
      fill_in 'Measurement unit', with: 'Pat'
      fill_in 'Price', with: 100
      click_button 'Create Food'

      expect(page).to have_content('Food created succesfully')
    end
  end
end
