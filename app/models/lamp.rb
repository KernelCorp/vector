class Lamp < ActiveRecord::Base

  attr_accessible :description, :name, :price, :category_id, :light_on, :light_off

  belongs_to :category

  has_attached_file :light_on,
                    :styles => {
                        :thumb => ["50x50#", :png]
                    },
                    :path => ':rails_root/public/system/images/lamps_on/:style/:filename',
                    :url => '/system/images/lamps_on/:style/:filename'

  has_attached_file :light_off,
                    :styles => {
                        :thumb => ["50x50#", :png]
                    },
                    :path => ':rails_root/public/system/images/lamps_off/:style/:filename',
                    :url => '/system/images/lamps_off/:style/:filename'

end
