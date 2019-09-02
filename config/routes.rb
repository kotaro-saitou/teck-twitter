Rails.application.routes.draw do
  root to: 'toppers#index'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
