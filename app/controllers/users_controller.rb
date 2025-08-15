class UsersController < ApplicationController
  # TODO: lock to admin role
  def index
    @users = User.all
  end
end
