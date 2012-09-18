class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Devise overrides
  def after_sign_in_path_for(user)
    edit_profile_path(user.profile)
  end
end
