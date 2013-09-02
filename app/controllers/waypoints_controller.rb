class WaypointsController < ApplicationController
  
  def index
    @trip = Trip.first
    @waypoints = @trip.waypoints

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @waypoints }
    end
  end

  def new
    @trip = Trip.first
    @waypoint = @trip.waypoints.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @waypoint }
    end
  end

  def create
    @trip = Trip.first
    @waypoint = @trip.waypoints.new(params[:waypoint])

    respond_to do |format|
      if @waypoint.save
        format.html { redirect_to :waypoint, notice: 'waypoint was successfully created.' }
        format.json { render json: :waypoint, status: :created, location: @waypoint }
      else
        format.html { render action: "new" }
        format.json { render json: @waypoint.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update

  end

  def destroy
    @waypoint = Waypoint.find(params[:id])
    @waypoint.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end


end
