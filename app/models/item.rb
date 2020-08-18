class Item < ApplicationRecord
  validates :amount, presence: true
  validates :menu_id, presence: true
  validates :ingredient_id, presence: true

  has_many :menus, through: :manu_items
  has_many :menu_items, dependent: :destroy
  belongs_to :ingredient
end
