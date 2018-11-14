class ReviewsController < ApplicationController
before_action :find_review, only: [:edit, :update, :show, :destroy]

  def index
    @reviews = Review.all
  end

  def show
    @restaurant = Restaurant.find_by(id:params[:id])
    @user = User.find_by(id:params[:id])
  end

  def new
    @review = Review.new
    @restaurants = Restaurant.all
    @restaurant = Restaurant.find_by(id:params[:id])
    @users = User.all
  end

  def create
    @review = Review.create(review_params)
    @restaurant = Restaurant.find_by(id:params[:id])
    @user = User.find_by(id:params[:id])
    if @review.valid?
      redirect_to restaurant_path(@restaurant)
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to new_review_path
    end
  end

  def edit
    @restaurants = Restaurant.all
    @users = User.all
  end

  def update
    @review.update(review_params)
    @restaurant = Restaurant.find_by(id:params[:id])
    @user = User.find_by(id:params[:id])
    if @review.valid?
      redirect_to review_path(@review)
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to new_review_path
    end
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:restaurant_id, :user_id, :title, :comment, :star)
  end

  def find_review
    @review = Review.find_by(id:params[:id])
  end

end
