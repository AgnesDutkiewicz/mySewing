module Api
  module Categories
    class ItemsController < ApiController
      def index
        chosen_items = Item.all.select { |i| i.category.downcase == params[:category_id] }
        serializer = ApiCategoriesSerializer.new

        render json: serializer.serialize(chosen_items)
      end
    end
  end
end
