module Api
  class TypesController < ApiController
    def index
      fabrics_with_category = Fabric.where.not(category: nil)
      categories = fabrics_with_category.map { |fabric| fabric.category.downcase.humanize }
      sorted_uniq_categories = categories.uniq.sort
      serialized_data = sorted_uniq_categories.map do |category_name|
        { type: category_name }
      end

      render json: serialized_data
    end
  end
end
