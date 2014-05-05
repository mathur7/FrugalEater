class MenuitemsController < ApplicationController

  def index
    @menuitem = Menuitem.new
  end

  # def show
  #   @menuitem = Menuitem.find(params[:id])
  # end

  # def new
  #   @menuitems = Menuitem.all
  # end

  # def create
  #   menuitem = Menuitem.create menuitem_params
  #   redirect_to(menuitem)
  # end

  # def edit
  #   @menuitem = Menuitem.find(params[:id])
  # end

  # def update
  #   @menuitem = Menuitem.find(params[:id])
  #   @menuitem.update menuitem_params
  #   redirect_to menuitem_path(@menuitem.id)
  # end

  # def destroy
  #   menuitem.find(params[:id]).destroy
  #   redirect_to root_path
  # end

  # private
  # def menuitem_params
  #   params.require(:menuitem).permit(:restaurant, :name, :price)
  # end

  
end
