module Api
  module Categories
    class ItemsController < ApiController
      def index
        chosen_item = Item.where(category: params[:category_id])

        render json: chosen_item
      end
    end
  end
end
