require 'rails_helper'

RSpec.describe "games#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/games/#{game.id}", payload
  end

  describe 'basic update' do
    let!(:game) { create(:game) }

    let(:payload) do
      {
        data: {
          id: game.id.to_s,
          type: 'games',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(GameResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { game.reload.attributes }
    end
  end
end
