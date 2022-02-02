module Api
  class CategoriesController < ApiController
    def index
      items_with_category = Item.where.not(category: nil)
      categories = items_with_category.map { |item| item.category.downcase.humanize }
      sorted_uniq_categories = categories.uniq.sort
      serialized_data = sorted_uniq_categories.map do |category_name|
        { name: category_name }
      end

      render json: serialized_data
    end
  end
end
