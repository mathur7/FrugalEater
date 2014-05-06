class HomeController < ApplicationController

  def index
      @menuitem = Menuitem.new
      if user_signed_in?
        redirect_to :controller => 'dashboard', :action => 'index'
      end

  end

  # def show
  #   @menuitem = Menuitem.find(params[:id])
  # end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     flash[:success] = "Welcome to the Cook Book app!"
  #     sign_in @user
  #     redirect_to @user
  #   else
  #     flash[:error] = "Failed to create account.  Try again."
  #     redirect_to new_user_path
  #   end
  # end

  # def update
  #   @user = User.find(params[:id])
  #   @user.update_attributes(user_params)
  #   redirect_to @user
  # end

  # private
  #   def user_params
  #     params.require(:user).permit(:name, :email, :password, :password_confirmation)
  #   end
end
