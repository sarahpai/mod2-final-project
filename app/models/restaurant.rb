class Restaurant < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :users, through: :reservations
  has_many :users, through: :reviews

  geocoded_by :address
  after_validation :geocode

  

end
