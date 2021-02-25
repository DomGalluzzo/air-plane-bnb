class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present?
      sql_query = " \
      planes.city ILIKE :query \
      "
      @planes = Plane.where(sql_query, query: "%#{params[:query]}%")
    else
      @planes = Plane.all
    end
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
    params.require(:plane).permit(:address, :max_occupancy, :price, :query, :city)
  end
end
