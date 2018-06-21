
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :dog
resources :walk_request
resources :user
resources :dashboard

  # devise_for :users
  # root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root to: "landing#index"


end
