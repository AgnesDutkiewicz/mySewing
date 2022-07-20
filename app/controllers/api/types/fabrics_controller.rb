module Api
  module Types
    class FabricsController < ApiController
      def index
        chosen_fabrics = Fabric.where(category: params[:type_id])

        render json: chosen_fabrics.to_json(only: [:id, :name, :category, :grammage])
      end
    end
  end
end
