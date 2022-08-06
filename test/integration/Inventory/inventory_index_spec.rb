
require 'rails_helper'

RSpec.describe 'Inventory Index page', type: :system do
  before(:all) do
   user1= User.find(1)
   @inventory1=Inventory.create(user_id: user1.id, name: 'Vegetables',description: 'vegetable, in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.' )
 end

  it "I can see the inventory id." do
    visit "/inventories"
    expect(page).to have_content(@inventory1.id)
  end

  it "I can see the inventory name." do
    visit "/inventories"
    expect(page).to have_content(@inventory1.name)
  end

  it 'I can see the description' do
    visit "/inventories"
    expect(page).to have_content('in the broadest sense')
  end

  it 'I can see remove button' do
    visit "/inventories"
    expect(page).to have_content('Remove')
  end

  it 'When I click on a inventory, it redirects me to that inventory show page.' do
    visit "/inventories"
    click_link("#{@inventory1.name} #{@inventory1.id}")
    expect(page).to have_content("#{@inventory1.name} #{@inventory1.id}")
  end
end
