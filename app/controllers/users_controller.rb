class UsersController < ApplicationController
  before_action :require_admin, only: [:index]
  before_action :require_login, only: [:show]

  def index
    @users = User.all
  end

  def show
    if @current_user.admin?
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end
end
