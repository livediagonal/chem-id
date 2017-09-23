Rails.application.routes.draw do
  root to: 'frontend/test_results#index'

  devise_for :users

  namespace :api do
    resources :test_results, only: [:create, :update]
  end

  scope module: :frontend do
    resources :test_results, only: [:index, :show]
  end
end
