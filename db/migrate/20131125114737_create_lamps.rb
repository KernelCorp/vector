class CreateLamps < ActiveRecord::Migration
  def change
    create_table :lamps do |t|
      t.references :category
      t.string :name
      t.text :description
      t.string :price
      t.attachment :light_on
      t.attachment :light_off

      t.timestamps
    end
  end
end
