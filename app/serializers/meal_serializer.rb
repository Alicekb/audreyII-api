class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe, :day_id

  belongs_to :day
  has_many :ingredients
end
