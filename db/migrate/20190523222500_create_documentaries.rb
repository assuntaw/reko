class CreateDocumentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :documentaries do |t|
      t.integer :itunes_id
      t.string :image_url
      t.string :title
      t.integer :year

      t.timestamps
    end
  end
end
