class VideoController < ApplicationController
  layout 'video'

  def show
    @video = Video.find(params[:id])
  end
end
