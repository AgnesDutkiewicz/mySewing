module Api
  module Categories
    class ItemsController < ApiController
      def index
        # chosen_item = Item.where(category: params[:category_id]) też działa
        chosen_items = Item.all.select { |i| i.category.downcase == params[:category_id] }

        render json: chosen_items
      end
    end
  end
end
