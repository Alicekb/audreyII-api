class Meal < ApplicationRecord
  validates :name, :recipe, :day_id, :ingredients, presence: true
  belongs_to :day
end