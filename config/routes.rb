Rails.application.routes.draw do
  root 'matches#index', as: 'home'
  get 'about', to: 'pages#about', as: 'about'

  resources :matches
end
