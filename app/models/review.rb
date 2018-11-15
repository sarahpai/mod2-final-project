class Review < ApplicationRecord
  # validates_presence_of :title, :comment, :star
  belongs_to :restaurant
  belongs_to :user
end
