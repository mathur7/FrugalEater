class HomeController < ApplicationController

  def index
    @menuitem = Menuitem.new
    if user_signed_in?
      redirect_to :controller => 'dashboard', :action => 'index'
    end
  end

end
