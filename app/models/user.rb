class User < ActiveRecord::Base
  belongs_to :department

  scope :active, -> { where(active: true) }
end
