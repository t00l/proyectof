class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def all
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

end
