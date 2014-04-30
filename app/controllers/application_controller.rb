class ApplicationController < ActionController::Base
 
	before_filter :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :first_name, :last_name, :profile_name, :password, :password_confirm) }
	  devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email, :first_name, :last_name, :profile_name, :password, :password_confirm) }
	  devise_parameter_sanitizer.for(:update) { |u| u.permit(:username, :email, :first_name, :last_name, :profile_name, :password, :password_confirm) }
	end

end
