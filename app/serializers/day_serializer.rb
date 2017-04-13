class DaySerializer < ActiveModel::Serializer
  attributes :id, :day_name
  
  belongs_to :week
  has_many :meals
end
