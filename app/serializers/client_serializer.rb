class ClientSerializer
  def serialize(clients)
    clients.map do |client|
      { id: client.id, client_name: client.client_name }
    end
  end
end
