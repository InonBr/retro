class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    @gadget = Gadget.find(params[:gadget_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.gadget_id = params[:gadget_id]
    @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @booking.gadget.price
    authorize @booking
    if @booking.save
      redirect_to gadget_booking_path(@booking.gadget, @booking)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
    #:status
  end
end
