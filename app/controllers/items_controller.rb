class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search] != nil
      search = params[:search].downcase
      sanitized_search = search.gsub(/[%_]/, '\\\\\0')
      @items = Item.where(Item.arel_table[:title].lower.matches("%#{sanitized_search}%").or(Item.arel_table[:barcode].matches("%#{sanitized_search}%")))
    else
      @items = Item.all
    end
  end
end
