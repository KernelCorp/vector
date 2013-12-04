#encoding: utf-8

class CreateDefaultGalleries < ActiveRecord::Migration

  def change
    Gallery.create! title: 'Цветовая гамма потолков'
    Gallery.create! title: 'Цветовая гамма полов'
    Gallery.create! title: 'Фотографии потолков'
    Gallery.create! title: 'Фотографии полов'
    Gallery.create! title: 'Фактура'
  end

end
