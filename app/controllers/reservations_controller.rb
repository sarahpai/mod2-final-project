class ReservationsController < ApplicationController
before_action :find_reservation, only: [:edit, :update, :show, :destroy]

  def index
    @reservations = Reservation.all
    @@restaurant = Restaurant.find_by(id:params[:id])
  end

  def show
    @restaurant = Restaurant.find_by(id:params[:id])
    @user = User.find_by(id:params[:id])
  end

  def new
    @reservation = Reservation.new
    @restaurants = Restaurant.all
    @users = User.all
  end

  def create
    @reservation = Reservation.create(reservation_params)
    @restaurant = Restaurant.find_by(id:params[:id])
    @user = User.find_by(id:params[:id])
    if @reservation.valid?
      redirect_to reservations_path
    else
      flash[:errors] = @reservation.errors.full_messages
      redirect_to new_reservation_path
    end
  end

  def edit
    @restaurants = Restaurant.all
    @users = User.all
  end

  def update
    @reservation.update(reservation_params)
    @restaurant = Restaurant.find_by(id:params[:id])
    @user = User.find_by(id:params[:id])
    if @reservation.valid?
      redirect_to reservations_path
    else
      flash[:errors] = @reservation.errors.full_messages
      redirect_to new_reservation_path
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  private
  def reservation_params
    params[:reservation].parse_time_select! :time
    params.require(:reservation).permit(:restaurant_id, :user_id, :time, :date, :party_size, :message)
  end

  def find_reservation
    @reservation = Reservation.find_by(id:params[:id])
  end

end
