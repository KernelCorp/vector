class CreateTableImagesGalleries < ActiveRecord::Migration

  def change
    create_table :galleries_images, :id => false do |t|
      t.references :image
      t.references :gallery
    end
    add_index :galleries_images, [:image_id, :gallery_id]
    add_index :galleries_images, :gallery_id
  end

end
