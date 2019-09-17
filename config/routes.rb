Rails.application.routes.draw do
  # root 'matches#index', as: 'home'
  get 'matches', to: 'matches#index', as: 'matches'
  root 'pages#about', as: 'home'
  resources :matches
end
