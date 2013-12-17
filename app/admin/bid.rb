ActiveAdmin.register Bid do

  actions :all, except: [:create]

  index do
    column :id
    column :name
    column :address
    column :email
    column :phone
    column :date
    column :time
    default_actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :address
      row :email
      row :phone
      row :date
      row :time
      row :info
    end
  end

end
