class SessionsController < ApplicationController
  def new
  end

  def create
    user_info = request.env["omniauth.auth"]
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user
      session[:user_id] = @user.id
      redirect_to controller: "users", action: "show", id: @user.id
    else
      redirect_to root_url, alert: "Login Failed"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to action: :new
  end
end
