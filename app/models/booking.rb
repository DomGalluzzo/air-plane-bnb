class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :plane

  validates :destination, presence: true
  validates :booking_date, presence: true
end
