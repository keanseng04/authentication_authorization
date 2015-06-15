class UserSessionsController < ApplicationController
<<<<<<< HEAD
  before_action :require_login, only: [:destroy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:user_sessions][:email], params[:user_sessions][:password])
      flash[:success] = "Login successful"
      redirect_back_or_to root_path
    else
      flash[:error] = "Login failed. Please input correct email or password."
      redirect_to(request.referrer || root_path)
    end
  end

  def destroy
    logout
    flash[:success] = "Logged out"
    redirect_to login_path
  end
=======
>>>>>>> 5127fe1c51071e2940b319cd12983cf6829c1aad
end
