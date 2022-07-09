RSpec.describe Api::ItemsController, type: :request do
  describe '#show' do
    subject(:fetch) { get "/api/items/#{dress.id}" }
    let!(:dress) { Item.create!(name: 'dress') }

    it 'returns item' do
      fetch

      expect(JSON.parse(response.body).map(&:symbolize_keys)).to match [
        match_item(dress)
      ]
    end

    def match_item(item)
      { id: item.id, name: item.name }
    end
  end
end
