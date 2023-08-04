class JobsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :job_not_found_response

  def index
    jobs = Job.all
    render json: jobs, status: :ok
  end

  def create
    job = Job.new(job_params)

    if job.save
      render json: job, status: :created
    else
      render json: { errors: job.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    job = find_job_by_id
    render json: job, serializer: JobSerializer, status: :ok
  end

  def destroy
    job = find_job_by_id
    job.destroy
    render json: { message: "Job successfully deleted" }, status: :ok
  end

  # Schedule interview for a job
  def schedule_interview
    job = find_job_by_id
    job.update_interview_status('scheduled')
    render json: { message: "Interview scheduled for job" }, status: :ok
  end

  # Accept interview for a job
  def accept_interview
    job = find_job_by_id
    job.update_interview_status('accepted')
    render json: { message: "Interview accepted for job" }, status: :ok
  end

  # Decline interview for a job
  def decline_interview
    job = find_job_by_id
    job.update_interview_status('declined')
    render json: { message: "Interview declined for job" }, status: :ok
  end

  private

  def find_job_by_id
    Job.find(params[:id])
  end

  def job_not_found_response
    render json: { error: "Job not found" }, status: :not_found
  end

  def job_params
    params.permit(
      :employer_id,
      :job_title,
      :job_description,
      :job_location,
      :job_category,
      :job_type,
      :job_qualifications,
      :salary_range,
      :application_deadline
    )
  end
end
