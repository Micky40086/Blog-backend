class AddSecureTokenToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :auth_token, :string
    add_index :posts, :auth_token, unique: true
  end
end
