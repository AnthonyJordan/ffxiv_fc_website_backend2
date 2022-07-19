class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :admin, :profile_picture_url
end
