class JobSeeker < ApplicationRecord
  belongs_to :user
  has_many :applications

  validates :user, presence: true
end