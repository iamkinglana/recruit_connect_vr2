class JobSeekerSerializer < ActiveModel::Serializer
  attributes :id, :profile_image, :name , :contact, :resume_attachment

  belongs_to :user
  has_many :applications
end
