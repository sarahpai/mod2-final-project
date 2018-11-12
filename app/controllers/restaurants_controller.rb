class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    find_restaurant
    @review = Review.find_by(id:params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.valid?
      redirect_to restaurant_path(@restaurant)
    else
      flash[:errors] = @restaurant.errors.full_messages
      redirect_to new_restaurant_path
    end
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :credit_card, :delivery)
  end

  def find_restaurant
    @restaurant = Restaurant.find_by(id:params[:id])
  end
end
