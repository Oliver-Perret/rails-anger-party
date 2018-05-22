class PlacesController < ApplicationController

  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = policy_scope(Place).order(created_at: :desc)
  end

  def new
    @place = current_user.places.new
    authorize @place
  end

  def edit

  end

  def create
    @place = current_user.places.new(place_params)
    authorize @place
    if @place.save
      redirect_to places_path(@place)
  end

  def update

    @place.update(place_params)
    redirect_to places_path
   end

  def show

  end

  def destroy
    @place.destroy
    redirect_to places_path(@place)
  end

  private

  def place_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:place).permit(:title, :address, :description, :price, :equipment, :destroy_pack, :category, :rate, :sleepings, :tools,)
  end

  def set_place
    @place = Place.find(params[:id])
    authorize @place
  end

end

