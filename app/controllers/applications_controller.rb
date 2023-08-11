class ApplicationsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :application_not_found_response

    def index
      render json: Application.all, status: :ok
    end

    def create
      application_data = application_params
      resume_attachment = application_data.delete(:resume_attachment)
      cover_letter_attachment = application_data.delete(:cover_letter_attachment)
  
      resume_upload = Cloudinary::Uploader.upload(resume_attachment.tempfile)
      cover_letter_upload = Cloudinary::Uploader.upload(cover_letter_attachment.tempfile)
  
      application_data[:resume_attachment] = resume_upload['secure_url']
      application_data[:cover_letter_attachment] = cover_letter_upload['secure_url']
  
      application = Application.create(application_data)
      render json: application, status: :created
    end
  

    def show
      application = Application.find(params[:id])
      render json: application, status: :ok
    end

    def destroy
      application = Application.find(params[:id])
      application.destroy
      render json: { message: "Application successfully deleted" }, status: :ok
    end

    private

    def application_not_found_response
      render json: { error: "Application not found" }, status: :not_found
    end


    def application_params
      params.require(:application).permit(
        :name,
        :job_seeker_id,
        :job_id,
        :application_date,
        :application_status,
        :resume_attachment,         
        :cover_letter_attachment   
      )
    end
  end
