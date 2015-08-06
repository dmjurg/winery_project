class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # checks for current user, to be used with before_filter on controller actions
  # we may want to protect
  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

  private
  def current_user
    # begin/rescue is used when you think an exception or error might be triggered
    begin
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # telling ruby to only run the code for errors of this type
    rescue ActiveRecord::RecordNotFound
      session[:user_id] = nil
    end
  end

  # helper_method makes the method available in the views as opposed to just in
  # the controllers that inherit from here
  helper_method :current_user

end
