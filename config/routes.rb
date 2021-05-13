  
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :characters, only: [ :index, :show, :update, :create, :destroy]
      resources :movies, only: [ :index, :show, :update, :create, :destroy ]
      resources :series, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
end