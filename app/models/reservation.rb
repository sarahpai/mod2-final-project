class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  def split_date
    self.date.to_s.split(" ").first
  end

  def split_time
    new_time = self.time.to_s.split(" ")[1]
    non_military_hour = new_time.split(":").first
    hour = non_military_hour.to_i - 12
    minute = new_time.split(":")[1]
    return "#{hour.to_s}:#{minute} PM"
  end
end
