RSpec.describe Items::AmountOrdersForItemVersionQuery do
  subject(:query) { described_class.new(item_id) }

  let(:item_id) { item.id }
  let(:item) { Item.create!(name: 'Shirt') }

  before do
    item_version = ItemVersion.create(item: item, size: 'L', color: 'blue')
    client = Client.create!(client_name: 'Some Client')

    # Order.create!(item_version: item_version, client: client, amount: 10.50)
    Order.create!(item_version: item_version, client: client, amount: 10)
  end

  describe 'call' do
    subject(:call) { query.call }

    it 'returns all Clients who ordered' do
      expect(call).to eq(10)
    end
  end
end
