module Api
  class ItemVersionsController < ApiController
    def index
      item_versions = Item.find(params[:item_id]).item_versions
      serializer = ItemVersionSerializer.new

      render json: serializer.serialize(item_versions)
    end
  end
end
