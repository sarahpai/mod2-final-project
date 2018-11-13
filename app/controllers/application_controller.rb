class ApplicationController < ActionController::Base
#   def location
#   if params[:restaurant].blank?
#     if Rails.env.test? || Rails.env.development?
#       @location ||= Geocoder.search("50.78.167.161").first
#     else
#       @location ||= request.location
#     end
#   else
#     params[:restaurant].each {|l| l = l.to_i } if params[:restaurant].is_a? Array
#     @location ||= Geocoder.search(params[:restaurant]).first
#     @location
#   end
# end
end
