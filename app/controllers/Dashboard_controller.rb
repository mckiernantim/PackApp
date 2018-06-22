class DashboardController < ApplicationController
    def index
        # We will change this to @user = current_user once devise is up and running
            @user=User.all.first
            #Also will be changed once Active Record works
            @dog = User.all.first.dogs.first
            @available_walks = WalkRequest.where.not(user_id: @user.id)
            # will need to be changed once active record is working
            @user_walks = WalkRequest.where(walker_id: @user.id)
            
    end

    def update
        
    end




end