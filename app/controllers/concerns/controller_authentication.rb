module ControllerAuthentication
  private

  def require_admin
    head :forbidden unless current_user&.admin?
  end

  def require_login
    head :forbidden unless current_user
  end
end
