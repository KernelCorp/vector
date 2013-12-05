ActiveAdmin.register FloorGallery do
  form do |f|
    f.inputs do
      f.input :title
      f.has_many :images, allow_destroy: true do |cf|
        cf.input :attachment
      end
    end
    f.actions
  end
end