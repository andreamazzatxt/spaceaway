class Planet < ApplicationRecord
  has_many :trips
  validates :name, :description, presence: true
end
