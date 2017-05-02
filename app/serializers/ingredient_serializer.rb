class IngredientSerializer < ActiveModel::Serializer
  attributes :id. :name, :category

  belongs_to :meal
end
