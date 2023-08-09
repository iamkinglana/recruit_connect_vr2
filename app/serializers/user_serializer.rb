class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :username, :role, :password_digest
  has_one :employer, if: :is_employer?
  has_one :job_seeker, if: :is_jobseeker?

  def is_employer?
    object.role == 'employer'
  end

  def is_jobseeker?
    object.role == 'jobseeker'
  end
end
