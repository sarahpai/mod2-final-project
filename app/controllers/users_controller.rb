class UsersController < ApplicationController
  before_action :find_user, to: [:show, :edit, :create, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @review = Review.find_by(id:params[:id])
  end

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up."
      flash[:color] = "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end

  def edit
  end

  def update
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :encrypted_password, :profile_picture, :user_name)
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end
end
