class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    redirect_to bookings_path(@booking)
  end

  def show

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

