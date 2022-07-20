module Api
  module Categories
    class ItemsController < ApiController
      def index
        chosen_items = Item.all.select { |i| i.category.downcase == params[:category_id] }
<<<<<<< Updated upstream
        serializer = ApiCategoriesSerializer.new
=======
        serializer = Categories::ItemsSerializer.new
>>>>>>> Stashed changes

        render json: serializer.serialize(chosen_items)
      end
    end
  end
end
