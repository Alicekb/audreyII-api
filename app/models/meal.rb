class Meal < ApplicationRecord
  validates :name, :recipe, :ingredients, :day_id, presence: true
  belongs_to :day
end