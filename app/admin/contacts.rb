#encoding: utf-8
ActiveAdmin.register Contacts do
  controller do
    def create
      if Contacts.all.length > 0
        flash[:contest_exists] = "Нельзя создать более одной страницы котактов"
        redirect_to :back
      else
        @contacts = Contacts.create params[:сщтефсеы]
        redirect_to admin_contacts_path @contacts
      end
    end
  end
end
