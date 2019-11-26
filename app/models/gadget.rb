class Gadget < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true }
  validates :condition, presence: true, acceptance: { accept: ['New', 'Lightly Used', 'Used'] }
  validates :category, presence: true
  validates :address, presence: true

  mount_uploader :image, ImageUploader
end
