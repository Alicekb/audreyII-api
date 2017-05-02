class Calendar < ApplicationRecord
  validates :year, presence: true
  has_many :weeks
  belongs_to :user
end