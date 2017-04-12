class Meal < ApplicationRecord
  validates :name, :recipe, :day_id, presence: true
  belongs_to :day
  has_many :ingredients
end