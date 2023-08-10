class Application < ApplicationRecord
    belongs_to :job_seeker
    belongs_to :job

    has_one_attached :resume_attachment
    has_one_attached :cover_letter_attachment
  end
