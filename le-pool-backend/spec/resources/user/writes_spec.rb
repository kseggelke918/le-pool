require 'rails_helper'

RSpec.describe UserResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'users',
          attributes: { }
        }
      }
    end

    let(:instance) do
      UserResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { User.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:user) { create(:user) }

    let(:payload) do
      {
        data: {
          id: user.id.to_s,
          type: 'users',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      UserResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { user.reload.updated_at }
      # .and change { user.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:user) { create(:user) }

    let(:instance) do
      UserResource.find(id: user.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { User.count }.by(-1)
    end
  end
end
