class JobSeekerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :profile_image, :name , :contact, :resume_attachment

  has_many :applications, include: [:job]
end
