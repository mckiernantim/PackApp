class WalkRequestsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @walk_request = WalkRequest.new
  end
  
  def show
    #needs to be changed from .first once devise is up and running
    @user=User.find(4)
    #Also will be changed once devise works
    @dog = @user.dogs.first
    @current_walk = WalkRequest.find(params[:id])
  end
  def create
    WalkRequest.create(walk_request_params)
    redirect_to dashboard_index_path
  end
# need to create show on dashboard
  private
 def walk_request_params
   params.require(:walk_request).permit(:walk_start_time, :date)
 end
 
end
