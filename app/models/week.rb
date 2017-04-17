class Week < ApplicationRecord
  validates :calendar_id, presence: true
  belongs_to :calendar
  has_many :days
  after_create :build_week
  before_destroy :destroy_associations

  def build_week
    days_of_the_week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

    days_of_the_week.each { |day|
      days.create(day_name: day)
    }
  end

  def destroy_associations
    days.destroy_all
  end
end
