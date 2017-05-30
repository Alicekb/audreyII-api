class WeekSerializer < ActiveModel::Serializer 
  has_many :days
  has_many :meals, through: :days
end
