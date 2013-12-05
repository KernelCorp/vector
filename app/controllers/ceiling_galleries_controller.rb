class CeilingGalleriesController < ApplicationController

  before_filter :get_page_id

  def index
    @galleries = CeilingGallery.all
  end

  private
  def get_page_id
    @page = Page.find params[:page_id] if params[:page_id]
  end

end
