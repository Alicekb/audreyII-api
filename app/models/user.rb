class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :calendars
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :build_calendar

  def build_calendar
    calendar = Calendar.create(year: Date.today.year, user_id: id)
    calendar.weeks.create
  end
end
