class ColorSpectrum < ActiveRecord::Base
  attr_accessible :name, :colors_attributes
  has_many :colors
  accepts_nested_attributes_for :colors, :allow_destroy => :true
end
