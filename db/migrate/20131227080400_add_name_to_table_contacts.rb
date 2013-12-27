
class AddNameToTableContacts < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.string :name
      t.string :map_id
    end
  end

end
