class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find_by[id: params[:id]]
  end

  def new
  end

  def create
  @photo = Photo.create(user: current_user, restaurant: @restaurant, url: params[:restaurant][:restaurant_photo]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
