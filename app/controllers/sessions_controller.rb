class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:messages] = "Welcome, #{@user.username}"
      redirect_to @user
    else
      flash.now[:errors] = "This account doesn't match our records"
      render :new
    end
  end

  def destroy
    session.clear
    flash[:messages] = 'Goodbye!'
    redirect_to root_path
  end
end
