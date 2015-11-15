class User < ActiveRecord::Base
  has_many :targets
  rolify
    rolify :before_add => :before_add_method

  def before_add_method(role)

  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
def make_admin!
  self.update_attribute(:admin, true)
end
end
