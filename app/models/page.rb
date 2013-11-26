class Page < ActiveRecord::Base
  include FriendlyId
  friendly_id :name, :use => :slugged

  attr_accessible :meta_desc, :meta_title, :name, :content, :redirect, :slug, :page_id

  belongs_to :page
  has_many :pages


end
