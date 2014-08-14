class FavoritesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @favorites = current_user.favorites
  end

  def create    
    @favorite = current_user.favorites.create favorite_params  
    redirect_to favorites_path
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    @favorites = current_user.favorites
    #if after deleting the last favorite, there are other favorites left then stay on the page or else redirect them to the dashboard
    if @favorites.count > 0
      redirect_to favorites_path
    else
      redirect_to dashboard_index_path
    end
  end

  def update
    @favorite = Favorite.find(params[:id])
    @favorite.update favorite_params
    redirect_to favorites(@favorite.id)
  end

  private
  def favorite_params
    params.require(:favorite).permit(:name, :description, :price, :restaurant, :address, :postal_code, :locality, :region, :user_id)
  end

end
  