class Review < ApplicationRecord
  belongs_to :booking
  validates :type, :content, :booking, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
