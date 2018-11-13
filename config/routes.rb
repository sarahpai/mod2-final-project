Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :photos
  resources :reviews
  resources :reservations
  resources :restaurants
  resources :users

  # match ':controller(/:action(/:id))(.:format)'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
