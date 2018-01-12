class ShipmentsController < ApplicationController
  require 'csv'
  before_action :authenticate_user!

  def create
    @shipment = Shipment.new(params[:shipment])
    @shipment.receiver = current_user

    if @shipment.save
      redirect_to shipment_path
    else
      # i dunno yet
    end
  end
end
