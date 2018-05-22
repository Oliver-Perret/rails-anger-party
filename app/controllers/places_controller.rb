class PlacesController < ApplicationController

  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  # def edit
  #   # @task = Task.find(params[:id])
  # end

  def create
    @place = Place.create(place_params)
    redirect_to places_path(@place)
  end

  # def update
  #   # @task = Task.find(params[:id])
  #   @cocktail.update(cocktail_params)
  #   redirect_to cocktails_path
  #  end

  def show
    # @cocktail = Cocktail.new
  end

  # def destroy
  #   # @task = Task.find(params[:id])
  #   @cocktail.destroy
  #   redirect_to cocktails_path(@cocktail)
  # end

  private

  def place_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:place).permit(:title, :address, :description, :price, :equipment, :destroy_pack, :category, :rate, :sleepings, :tools,)
  end

  def set_place
    @place = Place.find(params[:id])
  end

end
