class WalkRequestsController < ApplicationController
  def new
    @walk_request = WalkRequest.new
  end
  def show
    #needs to be changed from .first once active record is up and running
    @user=User.find(2)
    #Also will be changed once Active Record works
    @dog = @user.dogs.first
    @current_walk = WalkRequest.find(params[:id])
    
   
  end
end
