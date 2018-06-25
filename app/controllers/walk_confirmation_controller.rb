class WalkConfirmationController < ApplicationController


  def confirm_walk
    @user=User.find(2)
    wr = WalkRequest.find(params[:id])
    wr.walker_id = @user.id
    wr.save

    redirect_to dashboard_index_path
  end

end
