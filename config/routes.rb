Rails.application.routes.draw do
  resources :events
  resources :games
  devise_for :users
  resources :users
  root'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
