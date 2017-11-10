class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search]
      @items = Item.search(params[:search])
    else
      @items = Item.all
    end
  end
end
