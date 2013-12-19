class Contacts < ActiveRecord::Base
  attr_accessible :address, :order_phone, :montage_phone, :email
end