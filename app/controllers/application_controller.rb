class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    user_attrs = [:name, :role, :staff_code, :avatar]
    devise_parameter_sanitizer.permit :account_update, keys: user_attrs
  end
end
