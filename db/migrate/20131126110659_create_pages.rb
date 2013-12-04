class CreatePages < ActiveRecord::Migration

  def change
    create_table :pages do |t|
      t.references :parent
      t.string :name, null: false
      t.string :slug, null: false
      t.text :content
      t.string :redirect
      t.string :color
      t.string :meta_title
      t.text :meta_desc

      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end

end
