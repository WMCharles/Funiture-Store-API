class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :role
end
