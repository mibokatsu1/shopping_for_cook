class Menu < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :menu_items, foreign_key: 'menu_id', dependent: :destroy   #中間テーブルをthroughより先に書く
  has_many :items, through: :menu_items
end
