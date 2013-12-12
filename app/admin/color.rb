ActiveAdmin.register Color do

  menu false

  controller do
    def destroy
      Color.find(params[:id]).destroy
      redirect_to :back
    end
  end

end
