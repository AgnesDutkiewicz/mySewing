module Api
  class ClientsController < ApiController
    def index
      clients = Client.all
      serializer = ClientSerializer.new

      render json: serializer.serialize(clients)
    end
  end
end
