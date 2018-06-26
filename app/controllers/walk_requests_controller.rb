class WalkRequestsController < ApplicationController
  before_action :authenticate_user!

  def new
    @user_id = current_user.id
    @walk_request = WalkRequest.new


  end

  def create
      
    current_user.walk_requests.create(walk_request_params);

    # @walk_request = WalkRequest.new(walk_start_time: params[:walk_start_time], date: params[:date], dog_id: params[:dog_id])
    # @walk_request.user_id = current_user.id
    # @walk_request.save
    redirect_to dashboard_path
  end

  def show
    #needs to be changed from .first once devise is up and running
    @user=current_user
    #Also will be changed once devise works
    @dog = @user.dogs.first
    @current_walk = WalkRequest.find(params[:id])

  end

  def update
    @user = User.find(4)
    this_walk_request = WalkRequest.find(params[:id])
    this_walk_request.walker_id = @user.id
    this_walk_request.save
    redirect_to dashboard_path
  end

  def edit
      @this_walk = WalkRequest.find(params[:id])
   end

  def cancel

      @this_walk = WalkRequest.find(params[:id])
      @this_walk.walker_id = nil;
      @this_walk.save
      redirect_to dashboard_path
  end
# need to create show on dashboard

  private

  def walk_request_params
    params.require(:walk_request).permit(:date, :walk_start_time, :dog_id)
  end


end
