class TripsController < ApplicationController

  def index
    @trips = Trip.all
    @trip = Trip.first
    @waypoints = @trip.waypoints
    render json: @waypoints
  end
end
