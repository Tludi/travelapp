class DashboardController < ApplicationController
  skip_before_filter :require_login
  
  def index
    @title = "Here is your dashboard"
  end
end
