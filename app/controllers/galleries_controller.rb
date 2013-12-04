class GalleriesController < ApplicationController
  def index
    #TODO: remove this string after layout will be finished
    class_name = params[:class_name].nil? ? 'FloorGallery' : params[:class_name]
    @galleries = Gallery.all_galleries_in_class(class_name)
  end

end
