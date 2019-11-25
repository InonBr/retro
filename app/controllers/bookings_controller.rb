class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  # def show
  #   @gadget = Gadget.find(@booking.gadget_id)
  #   @user = User.find(@booking.user_id)
  # end

  def new
    @booking = Booking.new
    @gadget = Gadget.find(params[:gadget_id])
    authorize @booking
  end

  def create
    @booking = booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.gadget_id = params[:gadget_id]
    @booking.status = "Pending"
    if @booking.save!
      redirect_to user_booking_path(@booking.user.id, @booking)
    else
      render :new
    end
  end

=begin
  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to user_bookings_path(@booking.user_id)
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
  end
=end

  private

  def set_booking
    @booking = booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :gadget, :user, :total_price)
    #:status
  end
end
