class ItemVersionsController < ApplicationController
  def index
    @item_versions = ItemVersion.all
  end

  def show
    @item_version = ItemVersion.find(params[:id])
  end
end
