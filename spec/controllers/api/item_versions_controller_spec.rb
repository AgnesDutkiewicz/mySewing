RSpec.describe Api::ItemVersionsController, type: :request do
  describe '#index' do
    subject(:fetch) { get "/api/items/#{item.id}/versions" }

    let!(:item) { Item.create!(name: 'but') }
    let!(:dress1) { ItemVersion.create!(item: item, size: 'M', color: 'blue') }
    let!(:dress2) { ItemVersion.create!(item: item, size: 'L', color: 'red') }

    it 'returns item versions' do
      fetch

      expect(JSON.parse(response.body).map(&:symbolize_keys)).to match [
        match_item(dress1),
        match_item(dress2)
      ]
    end

    def match_item(item_version)
      { id: item_version.id, size: item_version.size, color: item_version.color }
    end
  end
end
