require 'rails_helper'

RSpec.describe "games#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/games/#{game.id}"
  end

  describe 'basic destroy' do
    let!(:game) { create(:game) }

    it 'updates the resource' do
      expect(GameResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { Game.count }.by(-1)
      expect { game.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq('meta' => {})
    end
  end
end
