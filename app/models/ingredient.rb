class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :items, dependent: :destroy
  belongs_to :unit, dependent: :destroy
end
