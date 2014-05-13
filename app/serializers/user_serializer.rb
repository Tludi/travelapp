class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :crypted_password, :salt
end
