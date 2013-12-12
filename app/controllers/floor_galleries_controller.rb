class FloorGalleriesController < ApplicationController

  before_filter :get_page_id

  def index
    @galleries = FloorGallery.all
  end

  private
  def get_page_id
    @page = Page.find 3
  end

end
