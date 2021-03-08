class Trip < ApplicationRecord
  belongs_to :spaceship
  belongs_to :planet

  validates :name, :price, :departure_date, :arrival_date, :planet, presence: true
end
