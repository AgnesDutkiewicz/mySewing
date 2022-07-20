module Api
  class FabricsController < ApiController
    def show
      chosen_fabric = Fabric.all.select { |i| i.id.to_s == params[:id] }
      serializer = FabricsSerializer.new

      render json: serializer.serialize(chosen_fabric)
    end
  end
end
