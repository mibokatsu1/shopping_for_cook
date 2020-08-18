class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :items
  belongs_to :unit
end
