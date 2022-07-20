module Api
  class ItemsController < ApiController
    def show
      item = Item.where(id: params[:id])
      serializer = ItemSerializer.new

      # This should return a single item, but FE expects an array so we can't change it at the moment.
      render json: serializer.serialize(item)
    end
  end
end
