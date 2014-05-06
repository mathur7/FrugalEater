class MenuitemsController < ApplicationController

  def search
    @page_title = "Frugaleater"
  end

  def index
     locu_name = params[:menuname] 
     #currently hardcoded the name paramater with burrito, that needs to change 
     response = Typhoeus.get("https://api.locu.com/v1_0/menu_item/search/?name=#{locu_name}&locality=San%20Francisco&price__lte=10&api_key=#{ENV['LOCU_KEY']}", followlocation: true)
     @menuitems = JSON.parse(response.body)
     @menuitems.inspect
  end

  def results
    search = params[:menuid]
    response = Typhoeus.get("https://api.locu.com/v1_0/menu_item/search/#{search}/?api_key=#{ENV['LOCU_KEY']}")
    @menuitems = JSON.parse(response.body)
    @restaurant = @menuitems['restaurant']
    @price = @menuitems['price']
    @address = @menuitems['address']
  end

end

  # def index
    
  # end

  # def show 
  #   locu_name = params[:menu_item] 
  #   response = Typhoeus.get("https://api.locu.com/v1_0/menu_item/search/?name=#{locu_name}&locality=San%20Francisco&price__lte=10&api_key=#{ENV['LOCU_KEY']}", followlocation: true)
  #   @results = JSON.parse(response.body)
  # end

  # def results 
  # end

  # def new
  #   # @menuitem = Menuitem.all
  # end

  # def create
  #   menuitem = Menuitem.create menuitem_params
  #   redirect_to(menuitem)
  # end

  # # def edit
  # #   @menuitem = Menuitem.find(params[:id])
  # # end

  # # def update
  # #   @menuitem = Menuitem.find(params[:id])
  # #   @menuitem.update menuitem_params
  # #   redirect_to menuitem_path(@menuitem.id)
  # # end

  # # def destroy
  # #   menuitem.find(params[:id]).destroy
  # #   redirect_to root_path
  # # end

  # private
  # def menuitem_params
  #   params.require(:menuitem).permit(:restaurant, :name, :price)
  # end

  

