class Day < ApplicationRecord
  validates :day_name, :week_id, presence: true
  belongs_to :week
  has_many :meals
  before_destroy :destroy_associations

  def destroy_associations
    meals.destroy_all
  end
end
