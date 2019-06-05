class UserSerializer < ActiveModel::Serializer
  attributes :id, :favorites, :username
end
