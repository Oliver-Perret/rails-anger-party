class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def edit

  end

  def create
    @place = Place.create(place_params)
    @place.owner = current_users
    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def update
    @place.update(place_params)
    redirect_to place_path
  end

  def show
    @booking = Booking.new
  end

  def destroy
    @place.destroy
    redirect_to places_path(@place)
  end

  private

  def place_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:place).permit(:title, :address, :description, :price, :equipment, :destroy_pack, :category, :rate, :sleepings, :tools)
  end

  def set_place
    @place = Place.find(params[:id])
  end

end

