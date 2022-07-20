module Api
  module Types
    class FabricsController < ApiController
      def index
        chosen_fabrics = Fabric.all.select { |i| i.category.downcase == params[:type_id] }
<<<<<<< Updated upstream
        serializer = ApiFabricsSerializer.new
=======
        serializer = Types::FabricsSerializer
>>>>>>> Stashed changes

        render json: serializer.serialize(chosen_fabrics)
      end
    end
  end
end
