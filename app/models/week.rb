class Week < ApplicationRecord
  validates :week_number, :calendar_id, presence: true
  belongs_to :calendar
  has_many :days
end
