RSpec.describe Api::ClientsController, type: :request do
  describe '#index' do
    subject(:fetch) { get '/api/clients' }

    let!(:alice) { Client.create!(client_name: 'Alice the 2nd') }
    let!(:bob) { Client.create!(client_name: 'Bob') }

    it 'returns clients' do
      fetch

      expect(JSON.parse(response.body).map(&:symbolize_keys)).to match [
        match_client(alice),
        match_client(bob)
      ]
    end

    def match_client(client)
      { id: client.id, client_name: client.client_name }
    end
  end
end
