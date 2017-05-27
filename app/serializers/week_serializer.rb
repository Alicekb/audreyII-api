class WeekSerializer < ActiveModel::Serializer
  attributes :id
  
  belongs_to :calendar
  has_many :days
  has_many :meals, through: :days
end
