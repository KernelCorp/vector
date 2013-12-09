ActiveAdmin.register Lamp do

  filter :category, as: :select
  filter :name

  index do
    selectable_column
    column :category_id do |lamp|
      lamp.category.name
    end
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
      row :id
      row :category_id do |lamp|
        lamp.category.name
      end
      row :name
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
      f.input :price
      f.input :light_on, as: :file
      f.input :light_off, as: :file
    end
    f.actions
  end

end
