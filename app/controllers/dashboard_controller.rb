class DashboardController < ApplicationController

before_action :authenticate_user!

  def index
    @menuitem = Menuitem.new
  end

end
