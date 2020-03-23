class UserSerializer < ActiveModel::Serializer
  attributes :id, :profile_name, :bio, :age, :profile_pic, :username, :password
end
