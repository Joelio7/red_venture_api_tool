require 'rails_helper'

RSpec.describe 'Visits API', type: :request do


  describe 'GET /users/visits' do

    context 'when user visits exists' do
      let(:user) { create(:user) }
      let(:user_id) { 1}
      let(:headers) { valid_headers }
      before { get "/users/1/visits", params: {}, headers: headers }
    it 'returns all visits associated with a user' do
      expect(json).not_to be_empty
      expect(1).to eq(user_id)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end


  context 'when user is not authorized' do

    before { get "/users/1/visits" }
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
      it 'returns a not found message' do
        expect(response.body).to match(/Missing token/)
      end
    end


 end
end
