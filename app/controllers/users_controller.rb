class UsersController < ApplicationController
  skip_before_action :require_login
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user[:username] = user_params[:first_name].parameterize
    @auth = @user.authentications.new(provider: "email")
    generate_random_uid

    if @user.save
      WelcomeEmailJob.new.async.perform(@user)
      auto_login(@user)
      redirect_to root_path
    else
      flash[:error] = @user.errors.full_messages
      redirect_to request.referrer
    end
  end

  def activate
    if (@user = User.load_from_activation_token(params[:id]))
      @user.activate!
      redirect_to(login_path, :notice => 'User was successfully activated.')
    else
      not_authenticated
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :first_name, :last_name, :avatar, :password, :password_confirmation)
  end

  def generate_random_uid
    begin
      @auth[:uid] = ( (SecureRandom.random_number)*1234567890 + 1234567890 ).to_i 
    end while Authentication.exists?(uid: @auth[:uid])
  end
end
