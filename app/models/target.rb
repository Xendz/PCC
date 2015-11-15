class Target < ActiveRecord::Base
#validates :latitude, :longitude, :presence => true
geocoded_by :ipaddress,
  :latitude => :latitude, :longitude => :longitude
after_validation :geocode

end
  