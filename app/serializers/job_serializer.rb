class JobSerializer < ActiveModel::Serializer
  attributes :id, :employer_id, :job_title, :job_description, :job_location, :job_category, :job_level, :job_skills, :job_qualifications, :salary_highest, :salary_lowest, :application_deadline, :created_at, :updated_at

  belongs_to :employer

end
