class Contacts < ActiveRecord::Base
  attr_accessible :name, :address, :order_phone, :montage_phone, :email, :map_id
end