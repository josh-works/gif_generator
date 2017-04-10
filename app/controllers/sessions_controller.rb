class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Login successful. Welcome back #{current_user.first_name}"
      redirect_to user_path(user)
    else
      flash.now[:invalid] =  "invalid credentials, please try again"
      redirect_to login_path
    end
  end

  def destroy
    fail
  end

end
