class UserSerializer < ActiveModel::Serializer
  attributes :id, :favorites, :username, :first_name, :last_name
end
