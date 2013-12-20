class Lamp < ActiveRecord::Base

  before_create :rename_attachment

  attr_accessible :name, :price, :category_id, :light_on, :light_off

  belongs_to :category

  has_attached_file :light_on,
                    :styles => {
                        :small => ["130x131#", :png],
                        :thumb => ["50x50#", :png]
                    },
                    :path => ':rails_root/public/system/images/lamps_on/:style/:filename',
                    :url => '/system/images/lamps_on/:style/:filename'

  has_attached_file :light_off,
                    :styles => {
                        :small => ["130x131#", :png],
                        :thumb => ["50x50#", :png]
                    },
                    :path => ':rails_root/public/system/images/lamps_off/:style/:filename',
                    :url => '/system/images/lamps_off/:style/:filename'

  private
  def rename_attachment
    begin
      name_on = SecureRandom.uuid
    end until Lamp.where(light_on_file_name: name_on).empty?

    begin
      name_off = SecureRandom.uuid
    end until Lamp.where(light_off_file_name: name_off).empty?

    name_on = name_on+ '.png'
    name_off = name_off+ '.png'

    self.light_on.instance_write(:file_name, name_on)
    self.light_off.instance_write(:file_name, name_off)

  end

end
