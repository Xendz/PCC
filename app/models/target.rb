class Target < ActiveRecord::Base

geocoded_by :ipaddress
after_validation :geocode

end
  