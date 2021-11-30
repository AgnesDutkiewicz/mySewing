class OrdersController < ApplicationController
  def index
    @orders = Client.find(params.fetch(:client_id)).orders
  end

  def show
    @order = Order.find(params[:id])
  end
end
