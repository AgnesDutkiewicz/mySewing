module Api
  module Categories
    class ItemsController < ApiController
      def index
        chosen_items = Item.where(category: params[:category_id])

        render json: chosen_items.to_json(only: [:id, :name, :category, :subname])
      end
    end
  end
end
