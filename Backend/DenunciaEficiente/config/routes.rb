Rails.application.routes.draw do
  resources :witness_evidences
  resources :witnesses
  resources :evidences
  resources :complaints
  resources :police_units
  resources :incidents
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  post 'user_token' => 'user_token#create'
  get 'users/current' => 'users#current'
  resources :users

  namespace :api, defaults: {format: 'json'} do
    resources :users, :incidents, :police_units, :complaints, :evidences, :witnesses, :witness_evidences, only: [:index, :create, :destroy, :update, :show]
  end
end
