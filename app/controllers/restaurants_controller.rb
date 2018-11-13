class RestaurantsController < ApplicationController

  def index
    if params[:search]
      @restaurants = Restaurant.search(params[:search])
    else
      @restaurants = Restaurant.all
    end
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

  def destroy
    find_restaurant
    @restaurant.destroy
    redirect_to restaurants_path
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :credit_card, :delivery, :longitude, :latitude, :search)
  end

  def find_restaurant
    @restaurant = Restaurant.find_by(id:params[:id])
  end
end
