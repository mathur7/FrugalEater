class FavoritesController < ApplicationController

  before_filter :authenticate_user!

  def search
    @favorites = Favorite.all
    @search = SimpleSearch.new SimpleSearch.get_params(params)
    if @search.valid?
      @favorites = @search.search_within Favorite.all, :name
    else
      flash[:errors] = @search.errors.full_message
    end
  end

  def create    
    @favorite = current_user.favorites.create favorite_params  
    redirect_to favorite_path(@favorite.id)  
  end

  def index
      @favorites = current_user.favorites
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def destroy
    Favorite.find(params[:id]).destroy
    redirect_to favorites_path
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
  