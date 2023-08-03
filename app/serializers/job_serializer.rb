class JobSerializer < ActiveModel::Serializer
  attributes :id, :job_title, :job_description, :job_location, :job_category, :job_level, :job_skills, :job_qualifications, :salary_highest, :salary_lowest, :application_deadline

  belongs_to :employer
  has_many :applications

end
