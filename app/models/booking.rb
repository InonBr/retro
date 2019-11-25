class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gadget

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, numericality: { only_integer: true }
end
