require 'rails_helper'

RSpec.describe "games#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/games", params: params
  end

  describe 'basic fetch' do
    let!(:game1) { create(:game) }
    let!(:game2) { create(:game) }

    it 'works' do
      expect(GameResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(['games'])
      expect(d.map(&:id)).to match_array([game1.id, game2.id])
    end
  end
end
