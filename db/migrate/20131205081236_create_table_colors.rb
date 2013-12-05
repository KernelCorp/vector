class CreateTableColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.references :color_spectrum
      t.timestamps
    end
  end
end
