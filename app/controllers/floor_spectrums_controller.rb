class FloorSpectrumsController < ApplicationController

  def index
    @color_spectrums = FloorSpectrum.all
    render 'color_spectrum/index'
  end

  protected
  def get_pages
    super
    @page = Page.find_by_redirect floor_spectrums_path
  end

end