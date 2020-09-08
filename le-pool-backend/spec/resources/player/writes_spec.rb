require 'rails_helper'

RSpec.describe PlayerResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'players',
          attributes: { }
        }
      }
    end

    let(:instance) do
      PlayerResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { Player.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:player) { create(:player) }

    let(:payload) do
      {
        data: {
          id: player.id.to_s,
          type: 'players',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      PlayerResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { player.reload.updated_at }
      # .and change { player.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:player) { create(:player) }

    let(:instance) do
      PlayerResource.find(id: player.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { Player.count }.by(-1)
    end
  end
end
