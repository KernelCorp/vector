class Page < ActiveRecord::Base
  include FriendlyId
  friendly_id :name, :use => :slugged

  attr_accessible :meta_desc, :meta_title, :name, :content, :redirect, :slug, :parent, :color

  belongs_to :parent, class_name: 'Page'
  has_many :pages

  scope :without_parent, -> {where parent_id: nil}

  def color
    color = read_attribute :color
    color.blank? ? parent.color : color
  end



end
