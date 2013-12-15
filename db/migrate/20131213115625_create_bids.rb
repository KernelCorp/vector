class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :date
      t.string :time
      t.text :info

      t.timestamps
    end
  end
end
