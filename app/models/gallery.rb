class Gallery < ActiveRecord::Base

  attr_accessible :template_name, :title

  #TODO: Do it after images model is created. Uncomment string below and make galleries_images table for the association.
  #has_and_belongs_to_many :images

end
