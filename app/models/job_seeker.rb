class JobSeeker < ApplicationRecord
  belongs_to :user
  has_many :applications
  has_many :jobs, through: :applications


  validates :user, presence: true
end