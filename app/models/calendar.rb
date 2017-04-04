class Calendar < ApplicationRecord
  validates :year, presence: true
  has_many :weeks
end