class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]
  
  def index
    redirect_to :root
  end

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:username], params[:password])
      redirect_back_or_to(@user, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      redirect_to(:login, notice: 'Login failed')
    end
  end

  def destroy
    logout
    redirect_to(:root, notice: 'Logged out!')
  end
end
