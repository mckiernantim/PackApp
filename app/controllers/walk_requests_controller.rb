class WalkRequestsController < ApplicationController
  def new
    @walk_request = WalkRequest.new
  end
  def edit
    
    #needs to be changed from .first once active record is up and running
    @user=User.all.first

    #Also will be changed once Active Record works
    @dog = User.all.first.dogs.first
    @current = WalkRequest.find(params[:id])
    
   
   
    
    
  end
end
