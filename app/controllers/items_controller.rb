class ItemsController < ApplicationController
  def index
    @items = Item.all
    # @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to root_path, notice: "編集が完了しました"
    else
      binding.pry
      # flash.now[:alert] = "登録に失敗しました"
      render :new, alert: "登録に失敗しました"
    end
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