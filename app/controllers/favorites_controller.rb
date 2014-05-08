class FavoritesController < ApplicationController

  def create    
      @favorite = Favorite.new
      @favorite.update favorite_params  
      redirect_to favorite_path(@favorite)
  end

  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  private
  def favorite_params
      params.require(:favorite).permit(:name, :description, :price, :restaurant, :address, :postal_code, :locality, :region, :user_id)
  end

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

  

