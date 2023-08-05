Rails.application.routes.draw do
  resources :applications
  resources :jobs
  resources :job_seekers
  resources :employers
  resources :users, except: [:show_current_user, :update]
  get '/users/current', to: 'users#show_current_user'
  put '/users/current', to: 'users#update'
  
  get '/restore-session', to: 'sessions#restore'
  post '/signup', to: 'sessions#signup'
  post '/login', to: 'sessions#login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'

end
