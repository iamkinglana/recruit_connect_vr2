class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :job_id, :application_date, :application_status, :job_seeker_id
  # Remove resume_attachment and cover_letter_attachment from here

  belongs_to :job
  belongs_to :job_seeker

  attribute :resume_attachment_data_url do
    if object.resume_attachment.attached?
      Rails.application.routes.url_helpers.rails_blob_path(object.resume_attachment, only_path: true)
    end
  end

  attribute :cover_letter_attachment_data_url do
    if object.cover_letter_attachment.attached?
      Rails.application.routes.url_helpers.rails_blob_path(object.cover_letter_attachment, only_path: true)
    end
  end

end
