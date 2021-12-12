module Api
  class ClientsController < ApiController
    def index
      clients = Client.all
      mapped_clients = clients.map do |client|
        { id: client.id, client_name: client.client_name }
      end

      render json: mapped_clients
    end
  end
end
