Rails.application.routes.draw do
  root to: 'frontend/samples#index'

  devise_for :users
  
  namespace :api do
    resources :samples, only: [:create]
  end

  scope module: :frontend do
    resources :samples, only: [:index, :show]
  end
end
