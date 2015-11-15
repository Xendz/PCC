class Target < ActiveRecord::Base
validates :latitude, :longitude, :presence => true
geocoded_by :ipaddress
after_validation :geocode

end
  