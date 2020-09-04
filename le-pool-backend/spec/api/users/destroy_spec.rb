require 'rails_helper'

RSpec.describe "users#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/users/#{user.id}"
  end

  describe 'basic destroy' do
    let!(:user) { create(:user) }

    it 'updates the resource' do
      expect(UserResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { User.count }.by(-1)
      expect { user.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq('meta' => {})
    end
  end
end
