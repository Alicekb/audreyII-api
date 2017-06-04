class Meal < ApplicationRecord
  validates :name, :recipe, :day_id, :ingredients, presence: true
  serialize :ingredients
  belongs_to :day
  before_create :clean_ingredients

  def clean_ingredients
    ingredients.each do |ingredient|
      ingredient.gsub!(/, ?(.*)/, '')
    end
  end
end