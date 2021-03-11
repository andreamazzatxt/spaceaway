class Trip < ApplicationRecord
  has_one_attached :photo
  belongs_to :spaceship
  belongs_to :planet
  belongs_to :captain, class_name: :User, foreign_key: :captain_id
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  validates :name, :price, :departure_date, :arrival_date, :planet, presence: true


  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :description],
    associated_against: {
      planet: [:name, :description],
      spaceship: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }

  def days_left
    (departure_date - Date.today).to_i
  end

  def need_approval
    # Check all the bookings are confirmed retun FALSE otherwise return N of bookings that needs approval
    to_approval = 0
    bookings.each do |booking|
      to_approval += booking.status ? 0 : 1
    end
    to_approval.zero? ? false : to_approval
  end
end
