RSpec.describe Api::ClientsController, type: :request do
  describe '#index' do
    subject(:fetch) { get '/api/clients' }

    let!(:alice) { Client.create!(client_name: 'Alice') }
    let!(:bob) { Client.create!(client_name: 'Bob') }

    it 'works' do
      fetch

      expect(JSON.parse(response.body).map(&:symbolize_keys)).to match [
        { id: alice.id, client_name: 'Alice' },
        { id: bob.id, client_name: 'Bob' }
      ]
    end
  end
end
