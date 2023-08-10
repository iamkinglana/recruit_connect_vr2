Rails.application.routes.draw do
  resources :applications
  resources :jobs do 
    member do
      post 'schedule_interview'
      post 'accept_interview'
      post 'decline_interview'
    end
  end
  
  resources :job_seekers
  resources :employers
  resources :users, except: [:show_current_user, :update]
  get '/users/current', to: 'users#show_current_user'
  put '/users/current', to: 'users#update'
  
  get '/restore-session', to: 'sessions#restore'
  post '/signup', to: 'sessions#signup'
  post '/login', to: 'sessions#login'
 
  get '/hello', to: 'application#hello_world'

  get '/job_statistics/acceptance_rate_per_month', to: 'job_statistics#acceptance_rate_per_month'
  get '/job_statistics/applications_per_month', to: 'job_statistics#applications_per_month'
  get '/job_statistics/interview_statistics', to: 'job_statistics#interview_statistics'

end
