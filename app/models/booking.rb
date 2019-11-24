class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gadget

  validates :from_date, presence: true
  validates :to_date, presence: true
  validates :total_price, numericality: { only_integer: true }
end
