class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]



  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new(booking_params)
    @booking.place = @place
    if @booking.save
      redirect_to place_path(@place)
    else
      render "places/show"
    end
  end



  def destroy
    @booking.destroy
    redirect_to bookings_path(@booking)
  end

  private

  def place_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:place).permit(????)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end

