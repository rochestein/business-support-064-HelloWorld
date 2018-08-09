Rails.application.routes.draw do
  resources :incidents
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  namespace :api, defaults: {format: 'json'} do
    resources :users, :incidents, only: [:index, :create, :destroy, :update, :show]
  end
end
