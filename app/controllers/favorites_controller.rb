class FavoritesController < ApplicationController

  def new
    @favorite = Favorite.new
  end

  def index
    @favorites = Favorite.all
  end

  # def show
  #   @favorite = Favorite.find(params[:id])
  # end

  def create
      Favorite.create favorite_params    
  end

  # def edit
  #   @favorite = favorite.find(params[:id])
  # end

  # def update
  #   @favorite = favorite.find(params[:id])
  #   @favorite.update favorite_params
  #   redirect_to favorites(@favorite.id)
  # end

  # def destroy
  #   favorite.find(params[:id]).destroy
  #   redirect_to favorites
  # end

  private
  def favorite_params
    params.require(:favorite).permit(:name, :description, :price, :venue_name, :address, :postal_code, :locality, :region)
  end

end

