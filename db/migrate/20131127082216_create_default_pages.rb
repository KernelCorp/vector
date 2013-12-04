#encoding: utf-8

class CreateDefaultPages < ActiveRecord::Migration

  def change
    floor = Page.create! name: 'НАЛИВНЫЕ 3D ПОЛЫ', color: 'yellow'
    ceiling = Page.create! name: 'НАТЯЖНЫЕ ПОТОЛКИ', color: 'red'
    lamp = Page.create! name: 'ТОЧЕЧНЫЕ СВЕТИЛЬНИКИ', color: 'brown'

    Page.create! name: 'Однотонные полы', parent: floor
    Page.create! name: '3D полы с картинкой', parent: floor
    Page.create! name: 'Фотогалерея полов', parent: floor, redirect: '/galleries/4'
    Page.create! name: 'Прайс-лист полов', parent: floor

    Page.create! name: 'Фактуры и цвета', parent: ceiling, redirect: '/galleries/5'
    Page.create! name: 'Фотогалерея потолков', parent: ceiling, redirect: '/galleries/3'
    Page.create! name: 'Прайс-лист потолков', parent: ceiling
    Page.create! name: 'Акции', parent: ceiling

    Page.create! name: 'Наружные', parent: lamp
    Page.create! name: 'Внутренние', parent: lamp
    Page.create! name: 'Светодиодные панели', parent: lamp
    Page.create! name: 'Светодиодные ленты', parent: lamp
  end

end
