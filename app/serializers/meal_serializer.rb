class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe, :calories, :ingredients

  belongs_to :day
  has_many :ingredients
end
