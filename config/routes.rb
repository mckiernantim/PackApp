 Rails.application.routes.draw do
  devise_for :users, controllers: {
       registrations: 'users/registrations'
     }
  resources :walk_requests

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "landing#index"

  get '/pre_dashboard', to: 'pre_dashboard#index'

  get '/join', to: 'join#index'


end
