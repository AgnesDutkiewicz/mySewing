class OrdersController < ApplicationController
  def index
    @orders = Client.find(params.fetch(:client_id)).orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @order = Order.new(client_id: @client.id)
  end
end
