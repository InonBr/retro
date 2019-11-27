Rails.application.routes.draw do
  get 'dashboards/dashboard', as: :dashboard
  devise_for :users
  root to: 'pages#home'
  resources :gadgets do
    resources :bookings, only: [:new, :create, :show]
  end

  namespace :user do
    root to: "gadgets#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
