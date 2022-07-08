class Room < ApplicationRecord
    mount_uploader :room_image, ImageUploader
    has_one_attached :room_image
    belongs_to :user
end
