class BookingsController < ApplicationController
  def new
    @plane = Plane.find(params[:plane_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @plane = Plane.find(params[:plane_id])
    @booking.plane = @plane
    @booking.user = current_user
    if @booking.save
    redirect_to  plane_booking_path(@plane.id, @booking.id)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:destination, :booking_date, :user_id, :plane_id)
  end
end
