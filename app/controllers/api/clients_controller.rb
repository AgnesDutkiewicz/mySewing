module Api
  class ClientsController < ApiController
    def index
      clients = Client.all
      render json: clients.to_json(only: [:id, :client_name])

      # serializer = ClientSerializer.new
      #
      # render json: serializer.serialize(clients)
    end
  end
end
