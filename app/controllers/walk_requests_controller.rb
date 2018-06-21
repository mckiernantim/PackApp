class WalkRequestsController < ApplicationController
  def new
    @walk_request = WalkRequest.new
  end
end
