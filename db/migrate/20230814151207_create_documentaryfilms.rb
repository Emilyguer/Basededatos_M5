class CreateDocumentaryfilms < ActiveRecord::Migration[7.0]
  def change
    create_table :documentaryfilms do |t|
      t.string :name
      t.text :synopsis
      t.string :director

      t.timestamps
    end
  end
end
