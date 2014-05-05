class MenuitemsController < ApplicationController

  def index
    @menuitem = Menuitem.new
  end

end
