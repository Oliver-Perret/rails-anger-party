class PagesController < ApplicationController
  def home
  end

  def dashboard
    @places = current_user.places
    # @places = Place.where(owner: current_user)
    @bookings = current_user.bookings_as_renter
    @email= current_user.email

  end
end
