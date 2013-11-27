class GalleriesController < ApplicationController

  def show
    @gallery = Gallery.find params[:id]
    if @gallery.template_name.blank?
      render
    else
      render 'show_'.concat(@gallery.template_name)
    end
  end

end
