class Location < ActiveRecord::Base
geocoded_by :ipaddress,
  :latitude => :latitude, :longitude => :longitude
after_validation :geocode 
end
