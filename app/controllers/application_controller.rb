class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      User.new(first_name: "Guest")
    end
  end
end
