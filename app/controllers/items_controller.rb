class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    search = params[:search].downcase
    @items = Item.where(Item.arel_table[:title].lower.matches("%#{search}%").or(Item.arel_table[:barcode].matches("%#{search}%")))
  end
end
