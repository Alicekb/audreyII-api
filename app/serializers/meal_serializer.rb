class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe

  belongs_to :day
  has_many :ingredients
end
