#encoding: utf-8
class FillRedirectInLampsPages < ActiveRecord::Migration
  def change
    Page.find_by_name('Наружные').update_attribute(:redirect, '/outdoor_lamps')
    Page.find_by_name('Внутренние').update_attribute(:redirect, '/indoor_lamps')
    Page.find_by_name('Светодиодные панели').update_attribute(:redirect, '/light_panels')
    Page.find_by_name('Светодиодные ленты').update_attribute(:redirect, '/light_tapes')
  end
end
