ActiveAdmin.register Page do

  filter :name
  filter :content

  index do
    column :id
    column :name
    column :content do |page|
      raw page.content
    end
    column :parent
    default_actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :content do |page|
        raw page.content
      end
      row :parent
      row :redirect
      row :meta_title
      row :meta_desc
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :content
      f.input :parent, as: :select, collection: Page.all
      f.input :redirect
      f.input :meta_title
      f.input :meta_desc
    end
    f.actions
  end

end
