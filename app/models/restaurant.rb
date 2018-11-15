class Restaurant < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :users, through: :reservations
  has_many :users, through: :reviews
  # validates_presence_of :name, :address, :phone, :credit_card, :delivery
  # validates_uniqueness_of :name, :address


  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  reverse_geocoded_by :latitude, :longitude, :address => :full_address
  mount_uploader :restaurant_photo, ImageUploader
  validates :restaurant_photo, file_size: { less_than: 1.megabytes }

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

  def total_reviews
    total = reviews.count

    return "No Reviews Yet" if total == 0
    return "1 Review" if total == 1
    return "#{total} Reviews" if total > 1
  end

  def average_star
    return nil if self.reviews.empty?
    sum = 0
    self.reviews.each { |review| sum += review.star.to_f }

    (sum.to_f / reviews.size.to_f).round
  end

end
