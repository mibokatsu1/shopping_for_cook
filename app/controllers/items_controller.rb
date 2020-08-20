class ItemsController < ApplicationController
  def index
    @items = Item.all
    # @item = Item.find(params[:id])
  end

  def new
  end

  def create
  end

private
  def item_params
    params.require(:item).permit(:amount, :menu_id, :ingredient_id)
  end

  # def item_params
  #   params.require(:item).permit(:amount, :menu_id, :ingredient_id, menus_attributes: [:name, :id, :user_id])
  # end

  def set_user
    @user = User.find(current_user.id)
  end
end