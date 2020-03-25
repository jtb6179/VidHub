Rails.application.routes.draw do
  resources :videos
  resources :comments


 get '/homepage', to: 'videos#homepage' 
 resources :users, only: [:create, :index] 

 post '/login', to: 'users#login'

 get '/persist', to: 'users#persist'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
