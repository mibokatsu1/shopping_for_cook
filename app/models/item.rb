class Item < ApplicationRecord
  validates :amount, presence: true
  validates :menu_id, presence: true
  validates :ingredient_id, presence: true

  has_many :menu_items, foreign_key: 'item_id', dependent: :destroy   #中間テーブルをthroughより先に書く
  has_many :menus, through: :menu_items
  belongs_to :ingredient
  # has_one :unit, through: :ingredient
  accepts_nested_attributes_for :menus
  accepts_nested_attributes_for :menu_items
  accepts_nested_attributes_for :ingredient
  # accepts_nested_attributes_for :ingredient, allow_destroy: true
end
