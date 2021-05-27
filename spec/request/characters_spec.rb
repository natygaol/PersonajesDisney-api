require 'rails_helper'

describe 'Characters API', type: :request do
    describe 'GET /characters' do
        it 'return all characters' do
            FactoryBot.create(:character, name: "Pocahontas", age: 20, weight: "42", story: "She was a strong and brave little indian girl")
            FactoryBot.create(:character, name: "Shuris", age: 12, weight: "37", story: "She was so smart and made a great team with Black Panther")

            get '/api/v1/characters'

            expect(response).to  have_http_status(:success)
            expect(JSON.parse(response.body).size).to eq(2)
        end
    end

    describe 'POST /characters' do
        it 'create a new character' do
            expect {
                post '/api/v1/characters', params: { character: {name: 'Poison Ivy', age: 20 , weight: '54', story: 'Dangerous'}  }
        }.to change { Character.count }.from(0).to(1)
            expect(response).to  have_http_status(:created)
        end
    end
end
