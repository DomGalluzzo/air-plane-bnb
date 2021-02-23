class PlanesController < ApplicationController

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
    @plane = Plane.find(params[:id])
  end

end
