#encoding: utf-8

class CreateDefaultGalleries < ActiveRecord::Migration

  def change
    Gallery.create! title: 'Цветовая гамма потолков', template_name: 'color_gallery'
    Gallery.create! title: 'Цветовая гамма полов', template_name: 'color_gallery'
    Gallery.create! title: 'Фотографии потолков', template_name: 'photo_gallery'
    Gallery.create! title: 'Фотографии полов', template_name: 'photo_gallery'
    Gallery.create! title: 'Фактура', template_name: 'texture_gallery'
  end

end
