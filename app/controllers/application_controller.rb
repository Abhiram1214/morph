class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user=User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
 #current_user can only be accessed from controllers, so we created a helper method in order
  # to access from the view.

  def authorize
    redirect_to login_url if current_user.nil?
  end
end
