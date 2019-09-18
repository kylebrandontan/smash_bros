Rails.application.routes.draw do
  get 'users/new'
  # root 'matches#index', as: 'home'
  get 'matches', to: 'matches#index', as: 'matches'
  get 'signup', to: 'users#new'
  root 'pages#about', as: 'home'
  get  '/signup',  to: 'users#new'
  resources :matches
end
