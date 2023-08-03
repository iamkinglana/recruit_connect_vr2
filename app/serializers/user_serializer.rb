class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :username, :role, :password_digest



end
