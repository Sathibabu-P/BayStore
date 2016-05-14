Rails.application.routes.draw do
 
  resources :listing_durations
  resources :listing_types
  resources :condition_types
  resources :products
  resources :stores
  resources :users

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/login', to: 'sessions#new'
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
