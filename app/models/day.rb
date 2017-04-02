class Day < ApplicationRecord
  validates :day_number, :week_id, presence: true
  belongs_to :week
  has_many :meals
end
