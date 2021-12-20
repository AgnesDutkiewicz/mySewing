module Api
  class ItemVersionsController < ApiController
    def index
      item_versions = ItemVersion.all
      serializer = ItemVersionSerializer.new

      render json: serializer.serialize(item_versions)
    end
  end
end
