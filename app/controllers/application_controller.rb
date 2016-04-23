class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user,:authenticate_user,:is_admin?
 

  private

	def current_user
	  @current_user ||= User.find_by(id: session[:user_id])
	end

	def is_admin?
	  if current_user
        Rails.application.secrets.app_admin_users.split(',').include?(current_user.email.downcase)
      end
	end

  def authenticate_user
    redirect_to login_path unless current_user
  end

	
end
