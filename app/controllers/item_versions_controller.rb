class ItemVersionsController < ApplicationController
  def index
    @item_versions = Item.find(params[:item_id]).item_versions
  end

  def show
    @item_version = ItemVersion.find(params[:id])
  end
end
