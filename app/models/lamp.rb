class Lamp < ActiveRecord::Base
  include FriendlyId
  friendly_id :name, :use => :slugged

  attr_accessible :description, :name

end
