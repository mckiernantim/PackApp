
 Rails.application.routes.draw do
  devise_for :users, controllers: {
       registrations: 'users/registrations',
      sessions: 'users/sessions'
     }
  resources :walk_requests do



    member do
      post '/confirm_walk_request', to: 'walk_confirmation#confirm_walk'

      get '/complete_walk', to: 'walk_requests#edit'
            # /walk_requests/:id/complete_walk
      post '/complete_walk', to: 'walk_requests#cancel', as: :cancel_walk
    end

  end

resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "landing#index"

  get '/pre_dashboard', to: 'pre_dashboard#index'

  get '/dashboard', to: 'dashboard#index'


  get '/join', to: 'join#index'

  get '/confirm', to: 'walk_confirmation#index'


  get '/confirm/:id', to: 'walk_requests#update'



end
