class Menu < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :items, through: :menu_items
  has_many :menu_items, dependent: :destroy
end
