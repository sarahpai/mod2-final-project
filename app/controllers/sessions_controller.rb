class SessionsController < ApplicationController
   skip_before_action :authorized, only: [:new, :create]

  def new
    render :new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
      login_user(@user)
      flash[:notice] = "Login Successful! Welcome #{@user.full_name}"
      redirect_to user_path(@user)
    else
      flash[:notice] = 'Invalid username or password'
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logout Successful'
    redirect_to login_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
