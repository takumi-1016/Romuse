class User < ApplicationRecord
    has_secure_password

    mount_uploader :icon_image, ImageUploader
    has_many :rooms
end
