class Image < ActiveRecord::Base

  attr_accessible :attachment, :color_id

  has_attached_file :attachment,
                               :styles => {
                                :small => ["142x115#", :png],
                                :small_spectrum => ["96x50#", :png],
                                :thumb => ["50x50#", :png]
                               },
                               :path => ':rails_root/public/system/images/:style/:filename',
                               :url => '/system/images/:style/:filename'
  has_and_belongs_to_many :galleries
  has_one :color

end
