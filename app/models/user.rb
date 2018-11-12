class User < ApplicationRecord
  has_many :reservations
  has_many :reviews
  has_many :restaurants, through: :reservations
  has_many :restaurants, through: :reviews
  # has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  # avalidates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  attr_accessor :password

  mount_uploader :profile_picture, ImageUploader

  def full_name
    self.first_name + " " + self.last_name
  end
end
