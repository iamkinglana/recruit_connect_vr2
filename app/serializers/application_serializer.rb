class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :job_id, :application_date, :resume_attachment, :cover_letter_attachment_data, :application_status, :job_seeker_id

  belongs_to :job
  belongs_to :job_seeker
end
