class ArchiveController < ApplicationController
  def index
    @archive = Video.archive.order_asc.all
  end
end
