class FloorGalleriesController < ApplicationController

  def index
    @galleries = FloorGallery.all
  end

  protected
  def get_pages
    super
    @page = Page.find_by_redirect floor_galleries_path
  end

end
