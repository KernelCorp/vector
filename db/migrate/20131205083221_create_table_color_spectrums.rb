class CreateTableColorSpectrums < ActiveRecord::Migration
  def change
    create_table :color_spectrums do |t|
      t.string :name
      t.string :type
      t.timestamps
    end
  end
end
