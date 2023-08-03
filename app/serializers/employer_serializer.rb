class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :logo, :website, :email , :phone

  has_many :jobs
  belongs_to :user

end
