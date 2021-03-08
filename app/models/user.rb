class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :second_name, :experience, presence: true
  validates :username, presence: true, uniqueness: true
  validates :date_birth, presence: true
  validates :is_captain, presence: true
end
