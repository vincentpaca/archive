class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :file_name
      t.text :content

      t.timestamps
    end
  end
end
