class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :restaurants, through: :reservations
  has_many :restaurants, through: :reviews
  has_secure_password
  # has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  # attr_accessible :username, :email, :password, :password_confirmation
  mount_uploader :profile_picture, ImageUploader

  def full_name
    self.first_name + " " + self.last_name
  end
end
