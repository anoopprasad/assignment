class Department < ActiveRecord::Base
  has_many :users

  def active_users
  	self.users.active
  end
end
