module Api
  class ItemsController < ApiController
    def index
      items = Item.all
      serializer = ItemSerializer.new

      render json: serializer.serialize(items)
    end
  end
end