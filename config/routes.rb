Rails.application.routes.draw do
  resources :applications
  resources :jobs
  resources :job_seekers
  resources :employers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'

end
