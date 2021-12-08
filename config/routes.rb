Rails.application.routes.draw do
  root 'home#index'
  resources :events
  resources :games
  devise_for :users
  resources :users
  resources :communities, only: :all do
    get :show
    get :index
    put :new
    post :create
  end
  
  #post "events/new"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
