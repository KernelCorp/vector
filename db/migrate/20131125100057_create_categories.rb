class CreateCategories < ActiveRecord::Migration

  def self.up
    create_table :categories do |t|
      t.string :name, :null => false
      t.string :slug, :null => false
      t.text :description

      t.timestamps
    end
    add_index :categories, :slug, :unique => true
  end

  def self.down
    drop_table :categories
  end

end
