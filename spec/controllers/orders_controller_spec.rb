RSpec.describe OrdersController, type: :request do
  describe '#create' do
    subject(:create_order) { post "/clients/#{client_id}/orders", params: params }

    let(:client) { Client.create!(client_name: 'John') }
    let(:client_id) { client.id }
    let(:item) { Item.create!(name: 'item') }
    let(:item_version) { ItemVersion.create!(item: item, size: 'L', color: 'red') }
    let(:params) do
      { order: { item_version_id: item_version.id } }
    end

    it 'works' do
      expect { create_order }
        .to change { Order.count }
        .from(0)
        .to(1)
    end
  end
end
