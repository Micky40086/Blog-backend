class StaticImage < ApplicationRecord
    mount_uploader :image, ImageUploader
end
