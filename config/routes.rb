
 Rails.application.routes.draw do
  devise_for :users, controllers: {
       registrations: 'users/registrations',
      sessions: 'users/sessions'
     }
  resources :walk_requests do



    member do
      post '/confirm_walk_request', to: 'walk_confirmation#confirm_walk'
      post '/mark_complete', to: 'walk_requests#complete_walk_request'
      post '/cancel', to: 'walk_requests#cancel'
      get '/view/', to: 'walk_requests#view', as: :view
      
    end

  end

resources :dogs
resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "landing#index"

  get '/pre_dashboard', to: 'pre_dashboard#index'

  get '/dashboard', to: 'dashboard#index'


  get '/join', to: 'join#index'

  get '/confirm', to: 'walk_confirmation#index'
  
  


  get '/confirm/:id', to: 'walk_requests#update'



end
