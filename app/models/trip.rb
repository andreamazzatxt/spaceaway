class Trip < ApplicationRecord
  belongs_to :spaceship
  belongs_to :planet
  belongs_to :captain, class_name: :User, foreign_key: :captain_id
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  validates :name, :price, :departure_date, :arrival_date, :planet, presence: true
end
