  class Trip < ApplicationRecord
  belongs_to :spaceship
  belongs_to :planet
  has_many :bookings
  has_many :reveiws, through: :bookings
  validates :name, :price, :departure_date, :arrival_date, :planet, presence: true
end
