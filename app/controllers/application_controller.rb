class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :setup_extra_device_fields, if: :devise_controller?

  def setup_extra_device_fields
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :avatar, :avatar_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :avatar, :avatar_cache])
  end


end
