class OrdersController < ApplicationController
  def index
    @orders = Client.find(params.fetch(:client_id)).orders
  end

  def new
    @client = Client.find(params[:client_id])
    @order = Order.new(client_id: @client.id)
  end

  def create
    client = Client.find(params[:client_id])
    order = client.orders.new
    order.item_version_id = params[:order][:item_version_id]
    order.save!

    redirect_to client_orders_path(client)
  end
end
