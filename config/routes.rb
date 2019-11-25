Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'gadgets/:id', to: 'posts#show'
end
