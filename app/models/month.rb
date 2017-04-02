class Month < ApplicationRecord
  validates :month_name, :calendar_id, presence: true
  belongs_to :calendar
  has_many :weeks
end
