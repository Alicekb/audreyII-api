class WeekSerializer < ActiveModel::Serializer
  attributes :id
  
  has_many :days
  has_many :meals, through: :days
end
