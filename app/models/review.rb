class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :type, :rating, :content, :user, :booking, presence: true
end
