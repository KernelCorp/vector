class ColorSpectrum < ActiveRecord::Base
  attr_accessible :name
  has_many :colors
end
