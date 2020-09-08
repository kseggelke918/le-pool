require 'rails_helper'

RSpec.describe "players#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/players/#{player.id}", params: params
  end

  describe 'basic fetch' do
    let!(:player) { create(:player) }

    it 'works' do
      expect(PlayerResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('players')
      expect(d.id).to eq(player.id)
    end
  end
end
