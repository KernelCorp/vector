class CreateLamps < ActiveRecord::Migration

  def self.up
    create_table :lamps do |t|
      t.string :name, :null => false
      t.string :slug, :null => false
      t.text :description

      t.timestamps
    end
    add_index :lamps, :slug, :unique => true
  end

  def self.down
    drop_table :lamps
  end

end
