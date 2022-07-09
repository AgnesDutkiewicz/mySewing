module Api
  class CategoriesController < ApiController
    def index
      items_with_category = Item.where.not(category: nil)
      categories = items_with_category.map { |item| item.category.downcase.humanize }
      sorted_uniq_categories = categories.uniq.sort

      serializer = CategoriesSerializer.new

      render json: serializer.serialize(sorted_uniq_categories)
    end
  end
end
