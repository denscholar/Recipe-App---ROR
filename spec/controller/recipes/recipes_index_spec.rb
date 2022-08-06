require 'rails_helper'

RSpec.describe 'Recipe Index page', type: :system do
  before(:all) do
    @user = User.new(email: 'thomas@mail.com', password: '121212', password_confirmation: '121212')
    @user.save!
    @recipe = Recipe.create(name: 'Recipe Name', preparation_time: 1, cooking_time: 1,
                            description: 'Recipe Description', user_id: @user.id, public: true)
  end
  it 'I can see the recipe id.' do
    visit ' /recipes'
    expect(page).to have_content(@recipe.id)
  end

  it 'I can see the recipes name.' do
    visit '/recipes'
    expect(page).to have_content(@recipe.name)
  end

  it 'I can see the description' do
    visit '/recipes'
    expect(page).to have_content('Recipe Description')
  end

  it 'I can see remove button' do
    visit '/recipes'
    expect(page).to have_content('Remove')
  end
end
