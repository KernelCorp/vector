ActiveAdmin.register CeilingGallery do
  form do |f|
    f.inputs do
      f.input :template_name
      f.input :title
      f.has_many :images, allow_destroy: true do |cf|
        cf.input :attachment
      end
    end
    f.actions
  end
end
