class JobStatisticsController < ApplicationController
    def acceptance_rate_per_month
      acceptance_stats = calculate_acceptance_rate_per_month
      render json: acceptance_stats, status: :ok
    end
  
    def applications_per_month
      application_stats = calculate_applications_per_month
      render json: application_stats, status: :ok
    end
  
    private
  
    def calculate_acceptance_rate_per_month
      start_date = Date.today.beginning_of_year
      end_date = Date.today.end_of_year
      acceptance_stats = {}
  
      (1..12).each do |month|
        start_month = start_date.change(month: month)
        end_month = start_month.end_of_month
        total_offers = Job.where(created_at: start_month..end_month).count
        accepted_offers = Job.where(created_at: start_month..end_month, accepted: true).count
  
        acceptance_rate = total_offers.zero? ? 0 : (accepted_offers.to_f / total_offers * 100).round(2)
        acceptance_stats[start_month.strftime('%B')] = acceptance_rate
      end
  
      acceptance_stats
    end
  
    def calculate_applications_per_month
      start_date = Date.today.beginning_of_year
      end_date = Date.today.end_of_year
      application_stats = {}
  
      (1..12).each do |month|
        start_month = start_date.change(month: month)
        end_month = start_month.end_of_month
        total_applications = Application.where(created_at: start_month..end_month).count
  
        application_stats[start_month.strftime('%B')] = total_applications
      end
  
      application_stats
    end

    def calculate_interview_statistics
        interview_stats = {
          scheduled: Interview.where(status: 'scheduled').count,
          accepted: Interview.where(status: 'accepted').count,
          declined: Interview.where(status: 'declined').count
        }
    
        interview_stats
      end
  end
  