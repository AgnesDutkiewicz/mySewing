module Api
  class ClientsController < ApiController
    def index
      clients = Client.all
      render json: clients.to_json(only: [:id, :client_name])
    end
  end
end
