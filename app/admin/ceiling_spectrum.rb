ActiveAdmin.register CeilingSpectrum do
  form do |f|
    f.inputs do
      f.input :name
      f.input :color, as: :string, input_html: {class: 'has_colorpicker'}
    end
    f.has_many :colors, allow_destroy: true do |cf|
      cf.inputs do
        cf.input :name
      end
      cf.inputs "Image", :for => [:image, cf.object.image || Image.new] do |image|
        image.input :attachment
      end
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    default_actions
  end

  show do |spectrum|
    attributes_table do
      row :name
    end
    table_for spectrum.colors, batch_actions: :destroy do
      column :name
      column :attachment do |color|
        image_tag color.image.attachment.url(:thumb)
      end
      #column :delete do |color|
      #  link_to 'Удалить',
      #end
    end
  end

end
