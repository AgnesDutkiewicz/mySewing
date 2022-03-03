class FabricsController < ApplicationController
  def index
    @fabrics = Fabric.all
  end

  def show
    @fabric = Fabric.find(params[:id])
  end
end
