class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :html, :turbo_stream
  
  protected

  def after_sign_up_path_for(resource)
    user_path(resource) # Redirect to the user's profile after signup
  end
  def after_update_path_for(resource)
    user_path(resource) # Redirect to the user's profile after updating
  end
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path # Redirect to login page after logout
  end
end
