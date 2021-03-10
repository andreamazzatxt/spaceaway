class Spaceship < ApplicationRecord
  has_many :trips
  validates :name, :capacity, :speciality, presence: true
  has_one_attached :photo
end
