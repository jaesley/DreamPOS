class PagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @shipment = Shipment.new
  end
end
