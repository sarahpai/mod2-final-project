Rails.application.routes.draw do
  # root   'static_pages#home'
  # get    '/help',    to: 'static_pages#help'
  # get    '/about',   to: 'static_pages#about'
  # get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new', as: :signup
  get    '/login',   to: 'sessions#new', as: :login
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :photos
  resources :reviews, except: [:new]
  resources :reservations, except: [:new]
  resources :restaurants
  resources :users

  get '/reviews/new/:id', to: "reviews#new", as: :new_review
  get '/reservations/new/:id', to: "reservations#new", as: :new_reservation

  # match ':controller(/:action(/:id))(.:format)'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
