class WeekSerializer < ActiveModel::Serializer
  attributes :id
  
  belongs_to :calendar
  has_many :days
end
