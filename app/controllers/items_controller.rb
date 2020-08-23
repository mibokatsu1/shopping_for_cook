class ItemsController < ApplicationController
  before_action :set_user

  def index
    @items = Item.all
    # @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @item.menus.build
    @item.menu_items.build
    # @item.ingredient.build
    # @item.build_menus
    # @item.build_menu_items

    @item.build_ingredient
  end

  def create
    @item = Item.new(item_params)
    
    # binding.pry
    if @item.save
      redirect_to root_path, notice: "編集が完了しました"
    else
      binding.pry
      flash.now[:alert] = "登録に失敗しました"
      render :new, alert: "登録に失敗しました"
    end
  end

private
  # def item_params
  #   params.require(:item).permit(:amount, :menu_id, :ingredient_id)
  # end

  # def item_params
  #   params.require(:item).permit(:amount, ingredient_attributes: [:id, :ingredient_name])
  #   params.require(:item).permit(ingredient_attributes: [:id, :ingredient_name])
  # end

  def item_params
    params.require(:item).permit(:amount, :menu_id, :ingredient_id, menus_attributes: [:id, :menu_name, :user_id], menu_items_attributes: [:id, :menu_id, :item_id], ingredient_attributes: [:id, :ingredient_name])
    # params.require(:item).permit(:amount, :menu_id, :ingredient_id, menus_attributes: [:id, :menu_name, :user_id], menu_items_attributes: [:id, :menu_id, :item_id], ingredient_attributes: [:id, :ingredient_name]).merge(user_id: current_user.id)
    # params.require(:item).permit(
    #   :amount,
    #   :menu_id,
    #   :ingredient_id,
    #   ingredient_attributes: [:id,
    #                           :ingredient_name]
    #   )
    #      .merge(user_id: current_user.id)
  end

  def set_user
    @user = User.find(current_user.id)
  end
end