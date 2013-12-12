#encoding: utf-8
class FillRedirectForLampPage < ActiveRecord::Migration
  def change
    Page.find_by_name('ТОЧЕЧНЫЕ СВЕТИЛЬНИКИ').update_attribute(:redirect, '/lamp')
  end
end
