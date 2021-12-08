Rails.application.routes.draw do
  
  resources :events
  resources :games
  devise_for :users
  resources :users
  resources :communities, only: [:create, :destroy]
  resources :participations, only: [:create, :destroy]
  
  root 'home#index'
  #post "events/new"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
