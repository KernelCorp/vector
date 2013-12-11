class CeilingGalleriesController < ApplicationController

  before_filter :get_page_id

  def index
    @galleries = CeilingGallery.all
  end

  private
  def get_page_id
    @page = Page.find 2
  end

end
