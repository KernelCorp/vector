#encoding: utf-8
class FillRedirectForMainLamp < ActiveRecord::Migration
  def change
    Page.find_by_name('ТОЧЕЧНЫЕ СВЕТИЛЬНИКИ').update_attribute(:redirect, '/outdoor_lamps')
  end
end
