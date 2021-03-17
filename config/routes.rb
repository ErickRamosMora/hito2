Rails.application.routes.draw do
  root to: 'tweets#index'
  
  get 'home/index'
  
  resources :tweets do
    member do
      post 'create_rt'
    end
  end

  put '/tweet/:id/like', to: 'tweets#like', as: 'like'
  #############################################
  delete '/tweet/:id/unlike', to: 'tweets#unlike', as: 'unlike'


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  #get "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
