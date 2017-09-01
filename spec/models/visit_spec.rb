require 'rails_helper'

RSpec.describe 'Visits API', type: :request do
  let(:user) { create(:user) }
  let(:visit_id) { visits.first.id }
  let(:headers) { valid_headers }

  describe 'GET /visits' do
    before { get 'users/1/visits', params: {}, headers: headers }
  end

  describe 'GET visits/states' do
    before { get "/users/1/visits/states", params: {}, headers: headers }
    end
  end

  describe 'POST /visits' do
    let(:valid_attributes) do
      { state_name: 'Alaska', city_name: "Sitka",user_id: user.id.to_s }.to_json
    end

    context 'when request is valid' do
      before { post '/users/visits', params: valid_attributes, headers: headers }
    end

    context 'when request is invalid' do
      let(:valid_attributes) { { city_name: nil }.to_json }
      before { post '/users/visits', params: valid_attributes, headers: headers }
    end

  describe 'DELETE /users/visits/:id' do
    before { delete "/users/visits/#{id}", params: {}, headers: headers }
  end
end
