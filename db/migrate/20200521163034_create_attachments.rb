class CreateAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :attachments do |t|
      t.string :image_file_name
      t.integer :image_files_size
      t.datetime :image_updated_at
      t.string :image_content_type
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
