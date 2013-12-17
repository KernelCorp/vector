class GalleriesController < ApplicationController
  def index
    clazz = params[:class_name] ==  'FloorGallery' ? FloorGallery : CeilingGallery
    @galleries = clazz.all
  end

end
