#encoding: utf-8

class CreateDefaultPages < ActiveRecord::Migration

  def change
    ceiling = Page.create! name: 'НАТЯЖНЫЕ ПОТОЛКИ', color: 'red'
    lamp = Page.create! name: 'ТОЧЕЧНЫЕ СВЕТИЛЬНИКИ', color: 'brown'
    floor = Page.create! name: 'НАЛИВНЫЕ 3D ПОЛЫ', color: 'yellow'

    Page.create! name: 'Фактуры и цвета', parent: ceiling
    Page.create! name: 'Фотогалерея', parent: ceiling, redirect: '/ceiling_galleries'
    Page.create! name: 'Прайс-лист', parent: ceiling
    Page.create! name: 'Акции', parent: ceiling

    Page.create! name: 'Наружные', parent: lamp
    Page.create! name: 'Внутренние', parent: lamp
    Page.create! name: 'Светодиодные панели', parent: lamp
    Page.create! name: 'Светодиодные ленты', parent: lamp

    Page.create! name: 'Однотонные полы', parent: floor
    Page.create! name: '3D полы с картинкой', parent: floor
    Page.create! name: 'Фотогалерея', parent: floor, redirect: '/floor_galleries'
    Page.create! name: 'Прайс-лист', parent: floor
  end

end
