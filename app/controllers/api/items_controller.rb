module Api
  class ItemsController < ApiController
    def index
      chosen_item = Item.all.select { |i| i.id.to_s == params[:id] }

      render json: chosen_item
    end
  end
end
