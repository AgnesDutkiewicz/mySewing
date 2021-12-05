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

  def create
    client = Client.find(params[:client_id])
    order = client.orders.new
    order.item_versions_id = params[:order][:item_versions_id]

    if order.save
      redirect_to client_orders_path(client)
    else
      raise StandardError
    end
  end
end
