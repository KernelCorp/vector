class ChangeContactsEmail < ActiveRecord::Migration
  def change
    Contacts.first.update_attributes email: '1@vektor-nsk.com'
  end
end
