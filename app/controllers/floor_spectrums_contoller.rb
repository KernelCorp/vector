class FloorSpectrumsController < ApplicationController

  def index
    @color_spectrums = FloorSpectrum.all
    render 'color_spectrum/index'
  end

end