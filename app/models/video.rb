class Video < ApplicationRecord
    mount_uploader :given_video, GivenVideoUploader
    mount_uploader :thumbnail, VideoThumbnailUploader
    belongs_to :user
    has_many :comments
end
