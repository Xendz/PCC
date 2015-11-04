class User < ActiveRecord::Base
  
  geocoded_by :ip_address,
  :latitude => :lat, :longitude => :lon
after_validation :geocode 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
def make_admin!
  self.update_attribute(:admin, true)
end
end
