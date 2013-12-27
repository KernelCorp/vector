ActiveAdmin.register Contacts do
  controller do
    def create
      @contacts = Contacts.create params[:contacts]
      redirect_to admin_contacts_path @contacts
    end
  end
end
