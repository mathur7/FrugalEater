class FavoritesController < ApplicationController

## Spacing is off in the controller.  Remember 2 spaces
## of indentation
  def create
      ## You could just do Favorite.create favorite_params
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

  def destroy
    ## Since you don't have authorization, this could produce an
    ## error when an id wasn't found.  You would be calling destroy
    ## on nil.
    Favorite.find(params[:id]).destroy
    redirect_to favorites_path

  end

  def update
    @favorite = favorite.find(params[:id])
    @favorite.update favorite_params
    redirect_to favorites(@favorite.id)
  end

  private
  def favorite_params
      params.require(:favorite).permit(:name, :description, :price, :restaurant, :address, :postal_code, :locality, :region, :user_id)
  end

end
  

  