class Review < ApplicationRecord
  belongs_to :booking
  has_one :user, through: :booking
  has_one :trip, through: :booking
  validates :review_type, :content, :booking, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
