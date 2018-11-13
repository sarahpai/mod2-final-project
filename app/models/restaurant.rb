class Restaurant < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :users, through: :reservations
  has_many :users, through: :reviews

  geocoded_by :address
  after_validation :geocode

  def self.search(search)
        if search
            power = Power.find_by(name: search)
            if power
                where(power_id: power)
            else
                Restaurant.all
            end
        else
            Restaurant.all
        end
    end


end
