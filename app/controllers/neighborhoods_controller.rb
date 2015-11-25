class NeighborhoodsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # ^ this is the DRY way to do it!
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update, :destroy]

  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    #@neighborhood = Neighborhood.find(params[:id])
    
    @listings = @neighborhood.listings.search(params[:search])
  end

  def edit
    #@neighborhood = Neighborhood.find(params[:id])
    #remove commented out code
  end


  private
  def neighborhood_params
    params.require(:neighborhood).permit(:title, :description)
  end

  def set_post
    @neighborhood = Neighborhood.find(params[:id])
  end

end
