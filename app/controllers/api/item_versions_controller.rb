module Api
  class ItemVersionsController < ApiController
    def index
      versions = ItemVersion.where(item_id: params[:item_id])

      render json: versions.to_json
    end
  end
end
