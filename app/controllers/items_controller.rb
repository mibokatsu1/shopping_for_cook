class ItemsController < ApplicationController
  def index
    @items = Item.all
    # @item = Item.find(params[:id])
  end

private
  def item_params
    marge(@item)
    params.require(:item).permit(:amount, :menu_id, :ingredient_id)
  end

  def set_user
    @user = User.find(current_user.id)
  end
end