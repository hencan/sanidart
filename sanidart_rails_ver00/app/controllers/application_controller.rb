class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters 
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :cell_phone])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :cell_phone])
    end

    def access_denied
        redirect_to root_path, notice: "Access Denied. Please log in as administrator."
    end
end
