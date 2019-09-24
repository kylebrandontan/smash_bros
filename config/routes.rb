Rails.application.routes.draw do
  get 'users/new'
  # root 'matches#index', as: 'home'
  get 'matches', to: 'matches#index', as: 'matches'
  root 'pages#about', as: 'home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :matches
  resources :users
end
