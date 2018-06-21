class DashboardController < ApplicationController
    def index
        # We will change this to @user = current_user once devise is up and running
            @user=User.all.first
            #Also will be changed once Active Record works
            @dog = User.all.first.dogs.first
            @walks = WalkRequest.where.not(user_id: @user.id)
            
    end
end