module Api
  class CategoriesController < ApiController
    def index
      items = Item.where('lower(name) = ?', name.downcase)
      items_with_category = items.where.not(category: nil)
      sorted_uniq_categories = items_with_category.uniq.sort
      serialized_data = sorted_uniq_categories.map do |category_name|
        { name: category_name }
      end

      render json: serialized_data
    end
  end
end
