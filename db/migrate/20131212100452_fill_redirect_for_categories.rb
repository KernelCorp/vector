#encoding: utf-8
class FillRedirectForCategories < ActiveRecord::Migration
  def change
    Page.find_by_name('Наружные').update_attribute(:redirect, 'categories/naruzhnye')
    Page.find_by_name('Внутренние').update_attribute(:redirect, '/categories/vnutrennie')
    Page.find_by_name('Светодиодные панели').update_attribute(:redirect, '/categories/svetodiodnye-paneli')
    Page.find_by_name('Светодиодные ленты').update_attribute(:redirect, '/categories/svetodiodnye-lenty')
  end
end
