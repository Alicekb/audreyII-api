class WeekSerializer < ActiveModel::Serializer
  attributes :id, :week_number
  
  belongs_to :calendar
  has_many :days
end
