class User < ApplicationRecord
  # validates_presence_of :email, :password, :password_confirmation, :user_name, :first_name, :last_name
  # validates_length_of :password, :password_confirmation, minimum: 8, on: :create
  # validates_uniqueness_of :email, :user_name
  # validates :password, confirmation: { case_sensitive: true }
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
