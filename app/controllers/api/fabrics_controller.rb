module Api
  class FabricsController < ApiController
    def show
      chosen_fabric = Fabric.find(id: params[:id])

      render json: chosen_fabric
    end
  end
end
