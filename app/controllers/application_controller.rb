class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  #### This one doesn't work, replaced by the followed on ####
  # protected 
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(.sign_up) << :name
  #   devise_parameter_sanitizer.for(:account_update) << :name
  # end
  
  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])

    devise_parameter_sanitizer.permit(:account_update, keys:[:name])

 end
  
end
