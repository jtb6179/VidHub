class Video < ApplicationRecord
    mount_uploader :given_video, GivenVideoUploader
    belongs_to :user
    has_many :comments
end
