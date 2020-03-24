Rails.application.routes.draw do
  resources :videos
  resources :comments
  resources :users

 get '/homepage', to: 'videos#homepage' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
