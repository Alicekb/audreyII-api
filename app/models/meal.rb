class Meal < ApplicationRecord
  validates :name, :recipe, :day_id, :ingredients, presence: true
  serialize :ingredients
  belongs_to :day
end