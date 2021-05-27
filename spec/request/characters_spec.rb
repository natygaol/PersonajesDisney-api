require 'rails_helper'

describe 'Characters API', type: :request do
    describe 'GET /characters' do
        before do
            FactoryBot.create(:character, name: "Pocahontas", age: 20, weight: "42", story: "She was a strong and brave little indian girl")
            FactoryBot.create(:character, name: "Shuris", age: 12, weight: "37", story: "She was so smart and made a great team with Black Panther")
        end

        it 'return all characters' do
            get '/api/v1/characters'

            expect(response).to  have_http_status(:success)
            expect(JSON.parse(response.body).size).to eq(2)
        end
    end

    describe 'POST /api/v1/characters' do
        # create a user before the test scenarios are run
            let!(:user) { User.create(email: 'chikorita@pokemon.com', authentication_token: 'abcdef') }
          
            # pass the user username and authentication to the header
            scenario 'valid character attributes' do
              post '/api/v1/characters', params: {
                character: {
                  name: "Poison Ivy",
                  age: 20,
                  weight: "54",
                  story: "Dangerous"
                }
              }, headers: { 'X-Username': user.email, 'X-Token': user.authentication_token }
            # ...
            end
    end

    describe 'POST /characters' do
        it 'create a new character' do
            expect {
                post '/api/v1/characters', params: { character: { name: "Poison Ivy", age: 20 , weight: "54", story: "Dangerous"}  }
            }.to change {Character.count}.from(0).to(1)

            expect(response).to  have_http_status(:created)
        end
    end

    describe 'DELETE characters/:id' do
        let!(:character) { FactoryBot.create(:character, name: "Pocahontas", age: 20, weight: "42", story: "She was a strong and brave little indian girl") }
        
        it 'deletes a character' do
            expect {
                delete "/api/v1/characters/#{character.id}"
            }.to change{Character.count}.from(1).to(0)
            
            expect(response).to have_http_status(:no_content)
        end
    end

end
