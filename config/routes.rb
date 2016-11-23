Rails.application.routes.draw do
  get 'sessions/new'

  resources :events
  resources :interests
  resources :users
  resources :types
  resources :organizations
  resources :locals
  resources :roles
  resources :users
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
