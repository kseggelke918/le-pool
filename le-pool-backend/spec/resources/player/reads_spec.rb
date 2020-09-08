require 'rails_helper'

RSpec.describe PlayerResource, type: :resource do
  describe 'serialization' do
    let!(:player) { create(:player) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(player.id)
      expect(data.jsonapi_type).to eq('players')
    end
  end

  describe 'filtering' do
    let!(:player1) { create(:player) }
    let!(:player2) { create(:player) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: player2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([player2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:player1) { create(:player) }
      let!(:player2) { create(:player) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            player1.id,
            player2.id
          ])
        end
      end

      context 'when descending' do
        before do
          params[:sort] = '-id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            player2.id,
            player1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
