class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @planes = Plane.search(params[:search])
  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(plane_params)
    @plane.user = current_user
    if @plane.save
      redirect_to @plane
    else
      render :new
    end
  end

  def show
    @plane = Plane.find(params[:id])
    @booking = Booking.new
  end

  private

  def plane_params
    params.require(:plane).permit(:address, :max_occupancy, :price, :address, :search)
  end
end
