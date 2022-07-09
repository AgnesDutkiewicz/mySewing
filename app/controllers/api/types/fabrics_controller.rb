module Api
  module Types
    class FabricsController < ApiController
      def index
        chosen_fabrics = Fabric.all.select { |i| i.category.downcase == params[:type_id] }
        serializer = ApiFabricsSerializer.new

        render json: serializer.serialize(chosen_fabrics)
      end
    end
  end
end
