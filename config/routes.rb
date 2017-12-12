Rails.application.routes.draw do
  devise_for :users
  root "top#home"
  get "home"             => "users#home"
  get "settings/profile" => "user#edit"

  resources :users, only: [:update]
end
