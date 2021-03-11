class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_many :reviews

  def booking_status
    if self.status.nil?
      "pending"
      elsif self.status?
        "accepted"
      else
        "declined"
      end
  end
end
