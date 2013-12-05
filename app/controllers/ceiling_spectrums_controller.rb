class CeilingSpectrumsController < ApplicationController

  def index
    @color_spectrums = CeilingSpectrum.all
    render 'color_spectrum/index'
  end

end