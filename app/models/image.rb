class Image < ActiveRecord::Base

  attr_accessible :attachment

  has_attached_file :attachment,
                               :styles => {
                                :small => ["142x115#", :png],
                                :thumb => ["50x50#", :png]
                               },
                               :path => ':rails_root/public/system/images/:style/:filename',
                               :url => '/system/images/:style/:filename'
  has_and_belongs_to_many :galleries

end
