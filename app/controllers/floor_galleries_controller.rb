class FloorGalleriesController < ApplicationController

  def index
    @galleries = FloorGallery.all
  end

end
