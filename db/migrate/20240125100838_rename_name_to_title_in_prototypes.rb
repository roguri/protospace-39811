class RenameNameToTitleInPrototypes < ActiveRecord::Migration[7.0]
  def change
    rename_column :prototypes, :name, :title
  end
end
