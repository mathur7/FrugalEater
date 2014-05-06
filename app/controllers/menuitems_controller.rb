class MenuitemsController < ApplicationController

  def search
    @page_title = "Frugaleater"
  end

  def index
     locu_name = params[:name] 
     response = Typhoeus.get("https://api.locu.com/v1_0/menu_item/search/?name=#{locu_name}&locality=San%20Francisco&price__lte=10&api_key=#{ENV['LOCU_KEY']}", followlocation: true)
     @menuitems = JSON.parse(response.body)
     # @menuitems.inspect
  end

  def show
    search = params[:id]
    response = Typhoeus.get("https://api.locu.com/v1_0/menu_item/#{search}/?api_key=#{ENV['LOCU_KEY']}")
    @menuitems = JSON.parse(response.body)
    @menuitem = @menuitems["objects"][0]["name"] 
    @price = @menuitems["objects"][0]["price"] 
    @name = @menuitems["objects"][0]["venue"]["name"] 
    @address = @menuitems["objects"][0]["venue"]["street_address"] 
    @postal_code = @menuitems["objects"][0]["venue"]["postal_code"] 
    @locality = @menuitems["objects"][0]["venue"]["locality"] 
    @region = @menuitems["objects"][0]["venue"]["region"] 
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

  

