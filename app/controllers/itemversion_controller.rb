class ItemversionController < ApplicationController
  def index
    @items_versions = Item_version.all
  end

  def show
    @item_version = Item_version.find(params[:id])
  end
end
