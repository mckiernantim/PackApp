class WalkConfirmationController < ApplicationController
  def show
      #needs to be changed from .first once active record is up and running
      @user=User.find(2)
      #Also will be changed once Active Record works
      @dog = @user.dogs.first
      @current_walk = WalkRequest.find(params[:id])
  end

  def confirm_walk
    @user=User.find(2)
    wr = WalkRequest.find(params[:id])
    wr.walker_id = @user.id
    wr.save


    redirect_to dashboard_index_path
  end

end
