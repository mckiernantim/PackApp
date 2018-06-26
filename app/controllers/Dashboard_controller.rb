class DashboardController < ApplicationController
  before_action :authenticate_user!
    def index

        if current_user
            @user_id = current_user.id
            @user = User.find(@user_id)


            # @dog = @user.dogs[0]

            # @available_walks = WalkRequest.where.not(user_id: @user.id).where(walker_id: nil).near(@user.postal_code, 1)
            # # will need to be changed once active record is working
            # @user_walks = WalkRequest.where(walker_id: @user.id)
        else
          redirect_to join_path, notice: 'You are not logged in'
        end

    end


end
