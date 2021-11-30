class ItemVersionsController < ApplicationController
  def show
    @item_version = ItemVersion.find(params[:id])
  end
end
