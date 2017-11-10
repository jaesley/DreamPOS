class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search]
      search = params[:search].downcase
      sanitized_search = search.gsub(/[%_]/, '\\\\\0')
      @users = User.where(User.arel_table[:email].lower.matches("%#{sanitized_search}%"))
    else
      @users = User.all
    end
  end
end
