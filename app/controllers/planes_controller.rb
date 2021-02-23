class PlanesController < ApplicationController
  before_action :find_plane only: :show

  def index
    @planes = Plane.all
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
  end

  private

  def find_plane
    @plane = Plane.find(params[:id])
  end
  
  def plane_params
    params.require(:plane).permit(:model)
  end
  

end
