require 'rails_helper'

RSpec.describe 'Inventory Tests', type: :request do
  context 'Index' do
    before(:each) do
      get '/inventories'
    end
    it 'Correct template was rendered.' do
      expect(response).to render_template(:index)
    end
    it 'Response status was correct.' do
      expect(response).to have_http_status(:ok)
    end
    it 'Includes correct placeholder text.' do
      expect(response.body).to include('Add Inventory')
    end
  end
end
