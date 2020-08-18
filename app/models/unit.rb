class Unit < ApplicationRecord
  validates :unit, presence: true, uniqueness: true
  validates :ingredient_id, presence: true

  has_many :ingredients
end
