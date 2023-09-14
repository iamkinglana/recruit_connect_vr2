class Application < ApplicationRecord
    belongs_to :job_seeker
    belongs_to :job
  
  has_one_attached :resume_attachment
  has_one_attached :cover_letter_attachment


  enum status: { pending: 0, accepted: 1, rejected: 2 }

  before_save :update_acceptance_status, if: :status_changed?

  def update_acceptance_status
    self.acceptance_date = Time.now if accepted?
  end
  
 end
