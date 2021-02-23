class BookingsController < ApplicationController
    def new
        @plane = Plane.find(params[:plane_id])
        @booking = Boking.new
    end

    def create
        @booking = Booking.new(booking_params)
        @plane = Plane.find(params[:plane_id])
        @booking.plane = @plane
    end

    private
    def booking_params
        params.require(:booking).permit(:destination, :user_id, :plane_id)
    end
end
