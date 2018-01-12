class ShipmentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @shipment = Shipment.find(params[:id])
  end

  def create
    @shipment = Shipment.new
  end
end
