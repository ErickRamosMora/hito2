Rails.application.routes.draw do
  resources :tweets
  root to: 'tweets#index'
  
  get 'home/index'


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  #get "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
