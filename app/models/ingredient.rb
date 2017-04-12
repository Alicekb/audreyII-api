class Ingredient < ApplicationRecord
  validates :name, :category, presence: true
  belongs_to :meal
end
