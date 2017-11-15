class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search]
      @items = Item.search(params[:search])
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
  end
end
