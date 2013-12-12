class AddDescriptionToTableColorSpectra < ActiveRecord::Migration
  def change
    change_table :color_spectrums do |t|
      t.text :description
    end
  end
end
