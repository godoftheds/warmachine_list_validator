class User < ApplicationRecord
  ROLE_ADMIN = "admin".freeze

  def self.from_omniauth(auth_callback)
    User.find_by(omniauth_provider: auth_callback["provider"],
                 omniauth_uid: auth_callback["uid"])
  end

  def admin?
    role == ROLE_ADMIN
  end
end
