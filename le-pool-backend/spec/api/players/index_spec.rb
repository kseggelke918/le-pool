require 'rails_helper'

RSpec.describe "players#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/players", params: params
  end

  describe 'basic fetch' do
    let!(:player1) { create(:player) }
    let!(:player2) { create(:player) }

    it 'works' do
      expect(PlayerResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(['players'])
      expect(d.map(&:id)).to match_array([player1.id, player2.id])
    end
  end
end
