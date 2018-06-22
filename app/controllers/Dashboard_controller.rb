class DashboardController < ApplicationController
    def index
        # We will change this to @user = current_user once devise is up and running
            @user = User.find(2)
            #Also will be changed once Active Record works
            @dog = @user.dogs.first
            @available_walks = WalkRequest.where.not(user_id: @user.id)
            # will need to be changed once active record is working
            @user_walks = WalkRequest.where(walker_id: @user.id)
    end
end
