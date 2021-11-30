class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @single_item = Item.find(params[:id])
  end
end
