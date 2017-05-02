class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe, :ingredients

  belongs_to :day
  has_many :ingredients
end
