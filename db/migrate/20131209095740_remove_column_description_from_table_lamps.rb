class RemoveColumnDescriptionFromTableLamps < ActiveRecord::Migration
  def change
    remove_column :lamps, :description
  end
end
