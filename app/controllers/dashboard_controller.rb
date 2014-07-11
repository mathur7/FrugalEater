class DashboardController < ApplicationController

before_action :authenticate_user!

  def index
    @menuitem = Menuitem.new
    @user = current_user
    @favorites = current_user.favorites
  end

end
