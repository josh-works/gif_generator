class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:welcome_new_user] = "Welcome to GifyApp, #{@user.first_name}"
      redirect_to user_path(@user)
    else
      flash[:invalid_submission] = "Invalid submission, please try again"
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :email,
                                 :password)
  end

end
