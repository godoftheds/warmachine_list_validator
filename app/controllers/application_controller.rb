class ApplicationController < ActionController::Base
  include ControllerAuthentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def current_user
    @current_user =
      if session[:user_id]
        User.find_by(id: session[:user_id])
      else
        nil
      end
  end
end
