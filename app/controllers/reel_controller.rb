class ReelController < ApplicationController
  def index
    @videos = Video.reel.order_asc.all
  end
end
