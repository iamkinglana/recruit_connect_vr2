class EmployersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_response
  rescue_from ActiveRecord::RecordNotFound, with: :employer_not_found_response

  def index
    render json: Employer.all, status: :ok
  end

  def show
    employer = find_employer_by_id
    render json: employer, status: :ok
  end

  def create
    employer = Employer.create!(employer_params)
    render json: employer, status: :created
  end

  def update
    current_employer.update(employer_params)
    render json: current_employer, status: :accepted
  end

  def destroy
    employer = Employer.find(params[:id])
    employer.destroy
    render json: { message: "Employer successfully deleted" }, status: :ok
  end

  private

  def employer_params
    params.permit(
      :name,
      :size,
      :logo,
      :website,
      :email,
      :phone
    )
  end

  def render_unprocessable_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def employer_not_found_response
    render json: { error: "Employer not found" }, status: :not_found
  end
end
