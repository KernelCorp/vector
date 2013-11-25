class Category < ActiveRecord::Base
  include FriendlyId
  friendly_id :name, :use => :slugged

  attr_accessible :name, :description

  has_many :lamps

end
