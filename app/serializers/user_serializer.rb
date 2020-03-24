class UserSerializer < ActiveModel::Serializer
  attributes :id, :profile_name, :bio, :age, :username

  has_many :videos
  has_many :comments
end
