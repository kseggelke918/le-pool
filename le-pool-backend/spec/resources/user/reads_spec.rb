require 'rails_helper'

RSpec.describe UserResource, type: :resource do
  describe 'serialization' do
    let!(:user) { create(:user) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(user.id)
      expect(data.jsonapi_type).to eq('users')
    end
  end

  describe 'filtering' do
    let!(:user1) { create(:user) }
    let!(:user2) { create(:user) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: user2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([user2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:user1) { create(:user) }
      let!(:user2) { create(:user) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            user1.id,
            user2.id
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
            user2.id,
            user1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
