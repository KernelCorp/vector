class CeilingSpectrumsController < ApplicationController

  def index
    @color_spectrums = CeilingSpectrum.all
    render 'color_spectrum/index'
  end

  protected
  def get_pages
    super
    @page = Page.find_by_redirect ceiling_spectrums_path
  end

end