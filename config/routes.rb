Rails.application.routes.draw do
  devise_for :users
  root "top#home"
  get "home"             => "users#home"
  get "settings/profile" => "users#profile"
  get "create/1" => "creators#create_name"

  resources :users, only: [:update]
end
