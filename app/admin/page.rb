ActiveAdmin.register Page do

  config.filters = false

  index do
    column :name
    column :content
    column :redirect
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :content
      row :redirect
      row :meta_title
      row :meta_desc
    end
  end

  form do |f|
    f.inputs do
      f.input :page_id, as: :select, collection: Page.all
      f.input :name
      f.input :content
      f.input :redirect
      f.input :meta_title
      f.input :meta_desc
    end
    f.actions
  end

end
