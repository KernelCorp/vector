class Color < ActiveRecord::Base
  attr_accessible :name, :image_attributes
  belongs_to :color_spectrum
  has_one :image
  accepts_nested_attributes_for :image, :allow_destroy => :true
end