class AddThumbnailToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :thumbnail, :text
  end
end
