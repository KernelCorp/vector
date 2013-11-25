#encoding: utf-8

class CreateDefaultLamps < ActiveRecord::Migration
  def change
    Lamp.create! name: 'Наружные', description: 'Лампы наружные! Горячие, утюжные!'
    Lamp.create! name: 'Внутренние', description: 'Лампы внутренние - светильники утренние!'
    Lamp.create! name: 'Светодиодные панели', description: 'Панели светодиодные! Экологичные, природные!'
    Lamp.create! name: 'Светодиодные ленты', description: 'Светодиодные ленты! Примотаем на изоленту!'
  end
end
