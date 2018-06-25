class PreDashboardController < ApplicationController

  def index
    postal_code = params[:postal_code_input]
    walkers = User.near(postal_code, 1).all
    @walkers = walkers.length


  end





  def pre_dashboard_params
    params.require(:pre_dashboard).permit(:postal_code)
  end
end
