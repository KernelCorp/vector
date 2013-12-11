#encoding: utf-8
class FillRedirectForGalleriesAndSpectra < ActiveRecord::Migration
  def change
    Page.find_by_name("Однотонные полы").update_attribute(:redirect, "/floor_spectrums")
    Page.find_by_name("Фактуры и цвета").update_attribute(:redirect, "/ceiling_spectrums")
    Page.find_by_name("Фотогалерея полов").update_attribute(:redirect, "/floor_galleries")
    Page.find_by_name("Фотогалерея потолков").update_attribute(:redirect, "/ceiling_galleries")
    Page.find_by_name("Наружные").update_attribute(:redirect, "/categories/1/lamps")
    Page.find_by_name("Внутренние").update_attribute(:redirect, "/categories/2/lamps")
    Page.find_by_name("Светодиодные панели").update_attribute(:redirect, "/categories/3/lamps")
    Page.find_by_name("Светодиодные ленты").update_attribute(:redirect, "/categories/4/lamps")
    Page.find_by_name('ТОЧЕЧНЫЕ СВЕТИЛЬНИКИ').update_attribute(:redirect, "/categories/1/lamps")

  end
end
