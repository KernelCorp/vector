#encoding: utf-8
ActiveAdmin.register CeilingSpectrum do

  controller do
    include FilesUpload
  end

  member_action :add_files, method: :post do
    upload_files
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :color, as: :string, input_html: {class: 'has_colorpicker'}
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
      row :description do
        raw spectrum.description
      end
    end
    table_for spectrum.colors, batch_actions: :destroy do
      column :name
      column :attachment do |color|
        image_tag color.image.attachment.url(:thumb)
      end
      column :delete do |color|
        link_to "Удалить", "/admin/colors/#{color.id}", method: :delete
      end
    end
    render partial: 'admin/images/add_images_as_attachment', locals: {action_helper: add_files_admin_ceiling_spectrum_path(spectrum) }
  end

end
