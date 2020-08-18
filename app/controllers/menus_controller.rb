class MenusController < ApplicationController
  def index
    @menus = Menu.all
    # @menu = Menu.find(params[:id])
    @items = Item.all
  end

  def new
  end

  private
  def menu_params
    params.require(:menu).permit(:name, :user_id)
  end

  def set_user
    @user = User.find(current_user.id)
  end

end
