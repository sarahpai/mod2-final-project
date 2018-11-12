class User < ApplicationRecord
  has_many :reservations
  has_many :reviews
  has_many :restaurants, through: :reservations
  has_many :restaurants, through: :reviews
end
