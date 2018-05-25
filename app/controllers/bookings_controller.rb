class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def edit
  end

  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new(booking_params)
    @booking.owner = current_user
    @booking.place = @place
    @booking.renter = current_user
    authorize @place
    if @booking.save
      redirect_to dashboard_path
    else
      render "places/show"
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

end


