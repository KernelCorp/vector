class GalleriesController < ApplicationController
  def index
    #TODO: remove this string after layout will be finished
    clazz = params[:class_name] ==  'FloorGallery' ? FloorGallery : CeilingGallery
    @galleries = clazz.all
  end

end
