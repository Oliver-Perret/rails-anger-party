class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def home
    @places = Place.all
  end

  def index
    if params[:query].present?
      @query = params[:query]
      sql_query = "title ILIKE :query OR category ILIKE :query OR address ILIKE :query OR description ILIKE :query"
      @places = policy_scope(Place).order(created_at: :desc).where(sql_query, query: "%#{params[:query]}%")
    else
      @places = policy_scope(Place).order(created_at: :desc)
    end

    @marker_places = Place.where.not(latitude: nil, longitude: nil)

      @markers = @marker_places.map do |place|
        {
          lat: place.latitude,
          lng: place.longitude#,
          # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        }
      end
    end


  def new
    @place = current_user.places.new
    authorize @place
  end

  def edit

  end

  def create
    @place = Place.create(place_params)
    @place.tools = params[:place][:tools].join(" ").strip
    @place.owner = current_user
    authorize @place

    if @place.save
      redirect_to places_path(@place)
    else
      render :new
    end
  end

  def update
    authorize @place
    @place = current_user.places.update(place_params)
    redirect_to places_path
   end


  def show

    @booking = Booking.new
  end

  def destroy
    authorize @place
    @place.destroy
    redirect_to dashboard_path
  end

  private

  def place_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:place).permit(:title, :address, :description, :photo, :price, :equipment, :destroy_pack, :category, :rate, :sleepings, :tools)
  end

  def set_place
    @place = Place.find(params[:id])
    authorize @place
  end

end

