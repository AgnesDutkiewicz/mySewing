module Api
  class TypesController < ApiController
    def index
      fabrics = Fabric.where('lower(name) = ?', name.downcase)
      fabrics_with_category = fabrics.where.not(category: nil)
      sorted_uniq_categories = fabrics_with_category.uniq.sort
      serialized_data = sorted_uniq_categories.map do |category_name|
        { type: category_name }
      end

      render json: serialized_data
    end
  end
end
