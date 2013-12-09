class AddColumnColorToTableSpectrums < ActiveRecord::Migration
  def change
    change_table :color_spectrums do |t|
      t.string :color
    end
  end
end
