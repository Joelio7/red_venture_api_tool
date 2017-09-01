require 'rails_helper'

RSpec.describe 'Cities API', type: :request do
  let(:user) { create(:user) }

  let(:headers) { valid_headers }


  describe 'GET /cities' do
      before { get "/states/Alaska/cities", params: {}, headers: headers}
      it 'returns all cities belonging to a state' do
       expect(json).not_to be_empty
       expect(json.count).to eq(50)
     end

   it 'returns status code 200' do
      expect(response).to have_http_status(200)
   end
 end
end
