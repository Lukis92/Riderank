class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      sanitized_params = %i(
        email
        password
        password_confirmation
      )
      u.permit(sanitized_params)
    end
  end
end
