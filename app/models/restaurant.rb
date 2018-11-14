class Restaurant < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :users, through: :reservations
  has_many :users, through: :reviews


  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :restaurant_photo, ImageUploader
  validates :restaurant_photo, file_size: { less_than: 1.megabytes }

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end


end
