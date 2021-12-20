RSpec.describe Api::ItemsController, type: :request do
  describe '#index' do
    subject(:fetch) { get '/api/items' }

    let!(:dress) { Item.create!(name: 'dress') }
    let!(:socks) { Item.create!(name: 'socks') }

    it 'returns items' do
      fetch

      expect(JSON.parse(response.body).map(&:symbolize_keys)).to match [
        match_item(dress),
        match_item(socks)
      ]
    end

    def match_item(item)
      { id: item.id, name: item.name }
    end
  end
end
