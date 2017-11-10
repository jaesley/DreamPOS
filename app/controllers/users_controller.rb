class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all
    end
  end
end
