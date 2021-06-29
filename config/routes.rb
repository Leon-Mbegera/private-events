Rails.application.routes.draw do

  devise_for :users
  root 'events#index'
  resources :events, :turnouts
  resources :users, only: [:show]
 
end
