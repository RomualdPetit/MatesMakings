Rails.application.routes.draw do
  
  resources :events
  resources :games
  devise_for :users
  resources :users
<<<<<<< Updated upstream
  resources :communities, only: [:create, :destroy]
  
  root 'home#index'
  #post "events/new"
=======
  
  root'home#index'
>>>>>>> Stashed changes
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
