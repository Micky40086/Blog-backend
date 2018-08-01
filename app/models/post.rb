class Post < ApplicationRecord
  has_secure_token :auth_token
  belongs_to :admin

  mount_uploader :thumbnail, ImageUploader
end
