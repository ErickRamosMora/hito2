Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'tweets#index'
  
  get '/tweets/hashtag/:name', to: 'tweets#hashtags'

  
  resources :tweets do
    member do
      post 'create_rt'
    end
  end

  put '/tweet/:id/like', to: 'tweets#like', as: 'like'
  delete '/tweet/:id/like', to: 'tweets#like'
  #############################################


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users do
    resources :friendships, only: [ :create, :destroy ]
  end


  #get "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
