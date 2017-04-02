class Week < ApplicationRecord
  validates :week_number, :month_id, presence: true
  belongs_to :month
  has_many :day
end
