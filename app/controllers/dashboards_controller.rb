class DashboardsController < ApplicationController
  def dashboard
    @gadgets = Gadget.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    authorize @gadgets
    authorize @bookings
  end
end
