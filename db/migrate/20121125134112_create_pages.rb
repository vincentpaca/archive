class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :document_id
      t.integer :number
      t.text :content

      t.timestamps
    end
  end
end
