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
		@booking.save
		redirect_to root_path
	end

  private

	def booking_params
		params.require(:booking).permit(:destination, :date, :user_id, :plane_id)
	end
end
