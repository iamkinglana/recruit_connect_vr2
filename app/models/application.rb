class Application < ApplicationRecord
    belongs_to :job_seeker
    belongs_to :job



  enum status: { pending: 0, accepted: 1, rejected: 2 }

  before_save :update_acceptance_status, if: :status_changed?

  def update_acceptance_status
    self.acceptance_date = Time.now if accepted?
  end
  
  end
  