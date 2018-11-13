class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Login Successful! Welcome!"
      redirect_to user_path(@user)
    else
      flash[:danger] = 'Invalid email/password combination'
      render "new"
    end
  end

  def destroy

  end

end
