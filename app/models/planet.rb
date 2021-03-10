class Planet < ApplicationRecord
  has_many :trips
  validates :name, :description, presence: true
  has_one_attached :photo
end
