Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :associates 
      resources :linkedin_networks
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      post '/extractor', to: 'associates#extractor'
    end
  end
end
