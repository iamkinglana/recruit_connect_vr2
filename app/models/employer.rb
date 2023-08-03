class Employer < ApplicationRecord
  belongs_to :user
  has_many :jobs

  validates :user, presence: true
end