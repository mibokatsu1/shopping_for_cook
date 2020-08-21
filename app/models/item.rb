class Item < ApplicationRecord
  validates :amount, presence: true
  validates :menu_id, presence: true
  validates :ingredient_id, presence: true

  has_many :menu_items, dependent: :destroy   #中間テーブルをthroughより先に書く
  has_many :menus, through: :manu_items
  belongs_to :ingredient
  # has_one :unit, through: :ingredient
  # accepts_nested_attributes_for :menus, through: :manu_items
  accepts_nested_attributes_for :ingredient, allow_destroy: true
end
