require 'rails_helper'

RSpec.describe "games#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/games/#{game.id}", params: params
  end

  describe 'basic fetch' do
    let!(:game) { create(:game) }

    it 'works' do
      expect(GameResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('games')
      expect(d.id).to eq(game.id)
    end
  end
end
