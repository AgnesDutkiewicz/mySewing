module Api
  module Types
    class FabricsController < ApiController
      def index
        chosen_fabrics = Fabric.all.select { |i| i.category.downcase == params[:type_id] }

        render json: chosen_fabrics.to_json(only: [:id, :name, :category, :grammage])
      end
    end
  end
end
