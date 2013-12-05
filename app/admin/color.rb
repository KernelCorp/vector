ActiveAdmin.register Color do

  form do |f|
    f.inputs do
      f.input :name
    end
    f.inputs "Image", :for => [:image, f.object.image || Image.new] do |image|
      image.input :attachment
    end
    f.actions
  end

end
