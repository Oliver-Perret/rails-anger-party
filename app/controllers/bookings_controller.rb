class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new(booking_params)
    @booking.place = @place
    @booking.renter = current_user
    authorize @place
    if @booking.save
      redirect_to place_path(@place)
    else
      render "places/show"
    end

  end

  def destroy
    @booking.destroy
    authorize @place
    redirect_to bookings_path(@booking)
  end

  private

  def booking_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @place
  end

end

