class AddColorReferencesToTableImages < ActiveRecord::Migration
  def change
    change_table :images do |t|
      t.references :colors
    end
  end
end
