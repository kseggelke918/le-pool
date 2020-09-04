require 'rails_helper'

RSpec.describe "games#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/games", payload
  end

  describe 'basic create' do
    let(:params) do
      {
        # ... your attrs here
      }
    end
    let(:payload) do
      {
        data: {
          type: 'games',
          attributes: params
        }
      }
    end

    it 'works' do
      expect(GameResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { Game.count }.by(1)
    end
  end
end
