class Trip < ActiveRecord::Base
  has_many :waypoints
end