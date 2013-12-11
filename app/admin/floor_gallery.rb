#encoding: utf-8
ActiveAdmin.register FloorGallery do
  member_action :add_files, method: :post do
    @image = FloorGallery.find(params[:id]).images.create!(attachment: @raw_file)
    if @image
      render json: { success: true, :url => @image.attachment.url(:thumb), :id => @image.id }
    else
      render json: { success: false }
    end
  end

  controller do
    before_filter :parse_raw_upload, only: [:add_files]
    private
    def parse_raw_upload
      if env['HTTP_X_FILE_UPLOAD'] == 'true'
        @raw_file = env['rack.input']
        @raw_file.class.class_eval { attr_accessor :original_filename, :content_type }
        @raw_file.original_filename = env['HTTP_X_FILE_NAME']
        @raw_file.content_type = env['HTTP_X_MIME_TYPE']
        if @raw_file.class.name == 'Unicorn::TeeInput'
          @raw_file = Paperclip::StringioAdapter.new(@raw_file)
        end
      end
    end
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
    render partial: 'admin/images/add_images_as_attachment', locals: {action_helper: add_files_admin_floor_gallery_path(gallery) }
  end
end
