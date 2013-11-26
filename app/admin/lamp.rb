ActiveAdmin.register Lamp do

  config.filters = false

  index do
    column :name
    column :price
    column :light_on do |lamp|
      image_tag lamp.light_on.url(:thumb)
    end
    column :light_off do |lamp|
      image_tag lamp.light_off.url(:thumb)
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :price
      row :light_on do |lamp|
        image_tag lamp.light_on.url(:thumb)
      end
      row :light_off do |lamp|
        image_tag lamp.light_off.url(:thumb)
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :category_id, as: :select, collection: Category.all
      f.input :name
      f.input :description
      f.input :price
      f.input :light_on, as: :file
      f.input :light_off, as: :file
    end
    f.actions
  end

end
