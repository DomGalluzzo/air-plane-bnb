class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_plane_id, only: :show

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
    authorize(@plane)
    @plane = Plane.new(plane_params)
    @plane.user = current_user
    if @plane.save
      redirect_to @plane
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def find_plane_id
    @plane = Plane.find(params[:id])
  end

  def plane_params
    params.require(:plane).permit(:plane_type, :address, :max_occupancy, :price, :query, :city, photos: [])
  end
end
