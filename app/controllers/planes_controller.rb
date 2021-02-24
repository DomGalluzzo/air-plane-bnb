class PlanesController < ApplicationController

  def index
    @planes = Plane.search(params[:search])
  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(plane_params)

    if @plane.save
      redirect_to @plane
    else
      render :new
    end
  end

  def show
    @plane = Plane.find(params[:id])
  end

  private

  def plane_params
    params.require(:plane).permit(:address, :max_occupancy, :price, :address, :search)
  end
end
