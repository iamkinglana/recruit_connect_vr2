class EmployersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_response
  rescue_from ActiveRecord::RecordNotFound, with: :job_seeker_not_found_response

  def index
    render json: Employer.all, status: :ok
  end
  def show
    job = find_job_by_id
    render json: job, serializer: JobSerializer, status: :ok
  end

  def create
    employer = Employer.create!(employer_params)
    # session[:employer_id] = employer.id
    render json: employer, status: :created
  end

  def update
    current_employer.update(employer_params)
    render json: current_employer, status: :accepted
  end

  def destroy
  employer = Employer.find(params[:id])
  employer.comments.destroy_all # Delete associated comments
  employer.destroy # Delete the employer
  render json: { message: "Employer successfully deleted" }, status: :ok
  end


  private

  def employer_params
    # params.permit(:profile_image, :name, :contact, :resume_attachment)
  end

  def render_unprocessable_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def employer_not_found_response
    render json: { error: "employer not found" }, status: :not_found
  end

end



# def destroy
#   employer = Employer.find(params[:id])
#   employer.comments.destroy_all # Delete associated comments
#   employer.destroy # Delete the employer
#   render json: { message: "Employer successfully deleted" }, status: :ok
# end
