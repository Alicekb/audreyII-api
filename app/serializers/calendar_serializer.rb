class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :year

  has_many :weeks
  belongs_to :user
end
