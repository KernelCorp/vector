#encoding: utf-8
ActiveAdmin.register CeilingGallery do

  controller do
    include FilesUpload
  end

  member_action :add_files, method: :post do
    upload_files
  end

  form do |f|
    f.inputs do
      f.input :title
      #f.has_many :images, allow_destroy: true do |cf|
      #  cf.input :attachment
      #end
    end
    f.actions
  end

  show do |gallery|
    attributes_table do
      row :title
    end
    table_for gallery.images do
      column :image do |image|
        image_tag image.attachment.url(:thumb)
      end
      column :delete do |image|
        link_to "Удалить", "/admin/images/#{image.id}", method: :delete
      end
    end
    render partial: 'admin/images/add_images', locals: {action_helper: add_files_admin_ceiling_gallery_path(gallery) }
  end
end
