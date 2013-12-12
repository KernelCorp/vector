module FilesUpload
  extend ActiveSupport::Concern

  included do
    before_filter :parse_raw_upload, only: [:add_files]
  end

  module ClassMethods
  end

  module InstanceMethods
    def upload_files
      if self.controller_name.classify == 'FloorGallery' || self.controller_name.classify == 'CeilingGallery'
        @image = self.controller_name.classify.constantize.find(params[:id]).images.create!(attachment: @raw_file)
      end
      if self.controller_name.classify == 'FloorSpectrum' || self.controller_name.classify == 'CeilingSpectrum'
        @color = self.controller_name.classify.constantize.find(params[:id]).colors.create!(name: params[:name])
        @image = Image.create!(attachment: @raw_file)
        @color.image = @image
      end
      if @image
        render json: { success: true, :url => @image.attachment.url(:thumb), :id => @image.id }
      else
        render json: { success: false }
      end
    end

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
end