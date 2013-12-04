class AddColumnTypeToTableGalleries < ActiveRecord::Migration
  def change
    change_table :galleries do |t|
      t.string :type
    end
  end
end
