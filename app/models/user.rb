class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :gadgets, dependent: :destroy
  has_many :external_bookings, through: :gadgets, source: :bookings

  # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
