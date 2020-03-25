class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_name, :text

  # belongs_to :user
  # belongs_to :video
end
