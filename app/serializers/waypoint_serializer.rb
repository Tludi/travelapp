class WaypointSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :waypost, :lat, :lng, :trip_id
end
