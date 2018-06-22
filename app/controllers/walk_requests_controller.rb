class WalkRequestsController < ApplicationController
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
end
