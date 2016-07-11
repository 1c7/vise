class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    before_filter :configure_permitted_parameters, if: :devise_controller?

    protected
    # you must write this
    def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:portrait, :name, :location, :bio, :school, :url])
    	devise_parameter_sanitizer.permit(:account_update, keys: [:portrait, :name, :location, :bio, :school, :url])
    end
end
