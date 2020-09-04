require 'rails_helper'

RSpec.describe GameResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'games',
          attributes: { }
        }
      }
    end

    let(:instance) do
      GameResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { Game.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:game) { create(:game) }

    let(:payload) do
      {
        data: {
          id: game.id.to_s,
          type: 'games',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      GameResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { game.reload.updated_at }
      # .and change { game.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:game) { create(:game) }

    let(:instance) do
      GameResource.find(id: game.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { Game.count }.by(-1)
    end
  end
end
