class ChangeColumnNamesForImages < ActiveRecord::Migration
  def change
    rename_column :images, :document_id, :page_id
  end
end
