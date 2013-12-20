#encoding: utf-8
class CreateTableContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :order_phone
      t.string :montage_phone
      t.string :email
      t.timestamps
    end

    Contacts.create address: 'г. Новосибирск, ул.Иванова 31/7, офис 8', order_phone: '(383) 286-17-20',
                    montage_phone: '(383) 287-13-34', email: '1@vektor-nsk.ru'
  end
end
