class NeighborhoodsController < ApplicationController

  before_action :set_neighborhood, only: [:show, :edit, :update, :destroy]

  # show all neighborhoods (get request)
  def index
    @neighborhoods = Neighborhood.order(:name).all
  end

  # show the form to create a new neighborhood (get request)
  def new
    @neighborhood = Neighborhood.new
  end

  # CREATE! a new neighborhood (post request)
  def create
    @neighborhood = Neighborhood.new(neighborhood_params)
    if @neighborhood.save
      redirect_to @neighborhood
    else
      redirect_to neighborhoods_path
      # render :new
    end
  end

  # show the form to update a neighborhood (get request)
  def edit
  end

  # edit/modify/update a neighborhood (put request)
  def update
    @neighborhood.update_attributes(neighborhood_params)
    if @neighborhood.save
      redirect_to @neighborhood
    else
      redirect_to neighborhoods_path
    end
  end

  # show an individual neighborhood (get request)
  def show
  end

  # delete an individual neighborhood (delete request)
  def destroy
    @neighborhood.destroy
    redirect_to neighborhoods_path
  end

  private

  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:id])
  end

  def neighborhood_params
    params.require(:neighborhood).permit(:name, :nickname, :borough, :description, :population, :image)
  end

end