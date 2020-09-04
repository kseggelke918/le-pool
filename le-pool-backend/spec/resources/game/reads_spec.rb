require 'rails_helper'

RSpec.describe GameResource, type: :resource do
  describe 'serialization' do
    let!(:game) { create(:game) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(game.id)
      expect(data.jsonapi_type).to eq('games')
    end
  end

  describe 'filtering' do
    let!(:game1) { create(:game) }
    let!(:game2) { create(:game) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: game2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([game2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:game1) { create(:game) }
      let!(:game2) { create(:game) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            game1.id,
            game2.id
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
            game2.id,
            game1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
