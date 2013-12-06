class FloorSpectrumsController < ApplicationController

  before_filter :get_page

  def index
    @color_spectrums = FloorSpectrum.all
    render 'color_spectrum/index'
  end

  private
  def get_page
    @page = Page.find params[:page_id] if params[:page_id]
  end

end