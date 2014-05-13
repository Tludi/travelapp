class Trip < ActiveRecord::Base
  has_many :waypoints

  belongs_to :user
end
