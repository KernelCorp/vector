class CeilingGalleriesController < ApplicationController

  def index
    @galleries = CeilingGallery.all
  end

  protected
  def get_pages
    super
    @page = Page.find_by_redirect ceiling_galleries_path
  end

end
