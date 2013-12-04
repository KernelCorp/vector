class RemoveColumnTemplateNameFromTableGalleries < ActiveRecord::Migration
  def change
    remove_column :galleries, :template_name
  end
end
