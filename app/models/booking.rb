class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user

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
