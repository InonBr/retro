class Gadget < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true }
  validates :condition, presence: true
  validates :category, presence: true
end
