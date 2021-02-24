class PlanesController < ApplicationController

  def index
    if params[:address]
      @plane = Plane.where('address LIKE ?', "%#{params[:address]}%")
    else
      @planes = Plane.all
    end
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
    params.require(:plane).permit(:address, :search)
  end
  

end
