class CeilingGalleriesController < ApplicationController

  def index
    @galleries = CeilingGallery.all
  end

end
