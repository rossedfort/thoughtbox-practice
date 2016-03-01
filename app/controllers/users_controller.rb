class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:messages] = "Welcome, #{user.username}!"
      session[:user_id] = user.id
      redirect_to links_path
    else
      redirect_to :back
      flash[:errors] = user.errors.full_messages.join(', ')
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
