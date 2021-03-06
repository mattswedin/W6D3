Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  post 'users', to: 'users#create'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  # resources :users
  resources :artworks, except: [:new, :index, :edit]
  resources :artwork_shares, only: [:create, :destroy]
  
  get 'users/:user_id/:artworks', to: 'artworks#index'
  
end
