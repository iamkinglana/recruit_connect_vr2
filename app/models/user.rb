class User < ApplicationRecord
  has_many :saved_jobs, dependent: :destroy
  has_many :applications
  has_many :jobs
  has_one :employer, dependent: :destroy 
  has_one :job_seeker, dependent: :destroy 

  has_secure_password

  validates :email, :name, :username, :role, :password, presence: true
  validates :email, uniqueness: true
  validates :role, inclusion: { in: ['employer', 'jobseeker'], message: "%{value} is not a valid role" }

  after_create :create_role_specific_record

  private

  def create_role_specific_record
    case role
    when 'employer'
      create_employer! 
    when 'jobseeker'
      create_job_seeker! 
    end
  end
end
