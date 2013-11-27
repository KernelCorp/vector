#encoding: utf-8

class CreateDefaultCategories < ActiveRecord::Migration

  def change
    Category.create! name: 'Наружные', description: 'Лампы наружные! Горячие, утюжные!'
    Category.create! name: 'Внутренние', description: 'Лампы внутренние - светильники утренние!'
    Category.create! name: 'Светодиодные панели', description: 'Панели светодиодные! Экологичные, природные!'
    Category.create! name: 'Светодиодные ленты', description: 'Светодиодные ленты! Примотаем на изоленту!'
  end

end
