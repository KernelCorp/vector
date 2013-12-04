#encoding: utf-8

class CreateDefaultPages < ActiveRecord::Migration

  def change
    floor = Page.create! name: 'Наливные 3D полы', color: 'yellow'
    Page.create! name: 'Однотонные полы', parent: floor
    Page.create! name: '3D полы с картинкой', parent: floor
    Page.create! name: 'Фотогалерея полов', parent: floor, redirect: '/galleries/4'
    Page.create! name: 'Прайс-лист полов', parent: floor
    ceiling = Page.create! name: 'Натяжные потолки', color: 'red'
    Page.create! name: 'Фактуры и цвета', parent: ceiling, redirect: '/galleries/5'
    Page.create! name: 'Фотогалерея потолков', parent: ceiling, redirect: '/galleries/3'
    Page.create! name: 'Прайс-лист потолков', parent: ceiling
    Page.create! name: 'Акции', parent: ceiling
    lamp = Page.create! name: 'Точечные светильники', color: 'brown'
    Page.create! name: 'Наружные', parent: lamp
    Page.create! name: 'Внутренние', parent: lamp
    Page.create! name: 'Светодиодные панели', parent: lamp
    Page.create! name: 'Светодиодные ленты', parent: lamp
  end

end
