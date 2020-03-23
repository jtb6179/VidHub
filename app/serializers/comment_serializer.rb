class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id,  :video_id, :text

  belongs_to :user
  belongs_to :video
end
