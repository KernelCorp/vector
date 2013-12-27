#encoding: utf-8
class AddNewContacts < ActiveRecord::Migration
  def change
    Contacts.all.first.update_attributes name: 'Офис в Академгородке:', map_id: 'map-academ'
    Contacts.create name: 'Офис в городе:', order_phone: '(383) 286-17-20',
                    montage_phone: '(383) 287-13-34', email: '1@vektor-nsk.com', address: 'г. Новосибирск, ул.Фрунзе&nbsp;88', map_id: 'map-town'
  end

end
