class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :username, :role, :password

  has_many :applications
  has_many :jobs


end
