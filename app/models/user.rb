class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :date_birth, presence: true
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  def full_name
    "#{first_name} #{last_name}"
  end
end
