class Trip < ApplicationRecord
  belongs_to :spaceship
  belongs_to :planet
  belongs_to :captain
end
