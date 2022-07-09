module Api
  class TypesController < ApiController
    def index
      fabrics_with_category = Fabric.where.not(category: nil)
      categories = fabrics_with_category.map { |fabric| fabric.category.downcase.humanize }
      sorted_uniq_categories = categories.uniq.sort
      serializer = TypesSerializer.new

      render json: serializer.serialize(sorted_uniq_categories)
    end
  end
end
