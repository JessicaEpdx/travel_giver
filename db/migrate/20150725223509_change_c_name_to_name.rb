class ChangeCNameToName < ActiveRecord::Migration
  def change
    rename_column :countries, :name, :name
    rename_column :countries, :description, :description
    rename_column :projects, :name, :name
    rename_column :projects, :description, :description
    rename_column :projects, :image, :image

  end
end
