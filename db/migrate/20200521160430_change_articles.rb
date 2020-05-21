class ChangeArticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :image_content_Type, :string
    add_column :articles, :image_content_type, :string
  end
end
