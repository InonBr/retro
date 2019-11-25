Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gadgets, only: [:show]
end
