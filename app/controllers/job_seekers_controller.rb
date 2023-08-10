class JobSeekersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_response
  rescue_from ActiveRecord::RecordNotFound, with: :job_seeker_not_found_response

  def index
    render json: JobSeeker.all, status: :ok
  end
  def show
    jobseeker = JobSeeker.find(params[:id])
    render json: jobseeker, serializer: JobSeekerSerializer, status: :ok
  end

  def create
    jobseeker = JobSeeker.create!(jobseeker_params)
    session[:jobseeker_id] = jobseeker.id
    render json: jobseeker, status: :created
  end

  def update
    jobseeker = JobSeeker.find(params[:id])
    jobseeker.update(jobseeker_params)
    render json: jobseeker, status: :created
  end

  def save
    save = JobSeeker.where(["jobseeker_id = ? ", params[:id], true]).uniq{ |rest| [rest.job.name] }
    render json: favorite, status: :ok
  end

  private

  def jobseeker_params
    params.permit(:profile_image, :name, :contact, :resume_attachment)
  end

  def render_unprocessable_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def jobseeker_not_found_response
    render json: { error: "jobseeker not found" }, status: :not_found
  end
end
