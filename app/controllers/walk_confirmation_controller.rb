class WalkConfirmationController < ApplicationController
  def show
      #needs to be changed from .first once active record is up and running
      @user=User.all.first
      #Also will be changed once Active Record works
      @dog = User.all.first.dogs.first
      @current_walk = WalkRequest.find(params[:id])
  end

end
