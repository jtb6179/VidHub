class VideoSerializer < ActiveModel::Serializer
  attributes :id,  :title, :description, :user_id,  :given_video, :thumbnail

  belongs_to :user
  has_many :comments
end
