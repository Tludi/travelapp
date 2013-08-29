class TripsController < ApplicationController
  # http://shrouded-waters-9847.herokuapp.com/trips.json
  def index
    @trips = Trip.all
    @trip = Trip.first
    @waypoints = @trip.waypoints
    render json: @trips
  end
end
