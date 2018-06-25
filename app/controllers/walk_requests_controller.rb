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
  def update
    @user = User.find(4)
    
    
    this_walk_request = WalkRequest.find(params[:id])
    this_walk_request.walker_id = @user.id
    byebug
    this_walk_request.save
   
 
    redirect_to dashboard_index_path
  end

  def edit
      
      @this_walk = WalkRequest.find(params[:id])

  end

  def cancel
      
      @this_walk = WalkRequest.find(params[:id])
      @this_walk.walker_id = nil;
      @this_walk.save

      redirect_to dashboard_index_path

  end
# need to create show on dashboard 

  private

 
end
