class Job < ApplicationRecord
  belongs_to :employer
  has_many :applications

 
  attribute :accepted, :boolean, default: false
  attribute :interview_scheduled, :boolean, default: false
  attribute :interview_declined, :boolean, default: false




  def update_interview_status(status)
    case status
    when 'accepted'
      update(accepted: true, interview_scheduled: false, interview_declined: false)
    when 'scheduled'
      update(interview_scheduled: true, interview_declined: false)
    when 'declined'
      update(interview_scheduled: false, interview_declined: true)
    when 'reset'
      update(accepted: false, interview_scheduled: false, interview_declined: false)
    end
  end
end
