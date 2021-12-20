RSpec.describe Api::ItemVersionsController, type: :request do
  describe '#index' do
    subject(:fetch) { get "/api/items/#{item.id}/versions" }

    let!(:item) { Item.create!(name: 'dress') }
    let!(:dress1) { ItemVersion.create!(item: item, size: 'M', color: 'blue') }
    let!(:dress2) { ItemVersion.create!(item: item, size: 'L', color: 'red') }

    context 'when there is one item' do
      it 'returns item versions for this item' do
        fetch

        expect(JSON.parse(response.body).map(&:symbolize_keys)).to match [
          match_item(dress1),
          match_item(dress2)
        ]
      end
    end

    context 'when there are multiple items' do
      let!(:second_item) { Item.create!(name: 'shoe') }
      let!(:first_shoe) { ItemVersion.create!(item: second_item, size: '39', color: 'black') }

      it 'returns item versions for first item' do
        fetch

        expect(JSON.parse(response.body).map(&:symbolize_keys)).to match [
          match_item(dress1),
          match_item(dress2)
        ]
      end
    end

    def match_item(item_version)
      { id: item_version.id, size: item_version.size, color: item_version.color }
    end
  end
end
