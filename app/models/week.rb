class Week < ApplicationRecord
  validates :week_number, :calendar_id, presence: true
  belongs_to :calendar
  has_many :days
  after_create :build_week

  def build_week
    days_of_week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

    days_of_week.each { |day|
      days.create(day_name: day)
    }
  end
end
