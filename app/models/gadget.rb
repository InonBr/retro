class Gadget < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  CATEGORIES = ["cameras", "computers", "tv", "music", "phones", "games", "writing"]
  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :condition, presence: true, acceptance: { accept: ['New', 'Lightly Used', 'Used'] }
  validates :address, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
