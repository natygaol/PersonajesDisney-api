require 'rails_helper'

describe 'Characters API', type: :request do
    it 'return all characters' do
        get '/api/v1/characters'

        expect(response).to  have_http_status(:success)
    end
end