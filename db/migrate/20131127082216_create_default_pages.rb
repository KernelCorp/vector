#encoding: utf-8

class CreateDefaultPages < ActiveRecord::Migration

  def change
    Page.create! name: 'Наливные 3D полы'
    Page.create! name: 'Однотонные полы', page_id: 1
    Page.create! name: '3D полы с картинкой', page_id: 1
    Page.create! name: 'Фотогалерея полов', page_id: 1, redirect: '/galleries/4'
    Page.create! name: 'Натяжные потолки'
    Page.create! name: 'Фактура', page_id: 5, redirect: '/galleries/5'
    Page.create! name: 'Цветовая гамма полов', page_id: 5, redirect: '/galleries/1'
    Page.create! name: 'Фотогалерея потолков', page_id: 5, redirect: '/galleries/3'
  end

end
