class MenuitemsController < ApplicationController

  def search
    @page_title = "Frugaleater"
  end

  def index
     locu_name = params[:name] 
     response = Typhoeus.get("https://api.locu.com/v1_0/menu_item/search/?name=#{locu_name}&locality=San%20Francisco&price__lte=10&api_key=#{ENV['LOCU_KEY']}", followlocation: true)
     @menuitems = JSON.parse(response.body)
  end

  def show
    search = params[:id]
    response = Typhoeus.get("https://api.locu.com/v1_0/menu_item/#{search}/?api_key=#{ENV['LOCU_KEY']}")
    @menuitems = JSON.parse(response.body)
    @menuitem = @menuitems["objects"][0]["name"] 
    @description = @menuitems["objects"][0]["description"] 
    @price = @menuitems["objects"][0]["price"] 
    @name = @menuitems["objects"][0]["venue"]["name"] 
    @address = @menuitems["objects"][0]["venue"]["street_address"] 
    @postal_code = @menuitems["objects"][0]["venue"]["postal_code"] 
    @locality = @menuitems["objects"][0]["venue"]["locality"] 
    @region = @menuitems["objects"][0]["venue"]["region"] 
    #Favorite.create(menuitem: @menuitem, description: @description, price: @price, name: @name, address: @address, postal_code: @postal_code, locality: @locality, region: @region)

  end

end

  
  

  

