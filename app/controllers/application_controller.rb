class ApplicationController < ActionController::Base

  before_filter :configure_permitted_parameters, if: :devise_controller? 
    
  private

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
      #devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
      #devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
