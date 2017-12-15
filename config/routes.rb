Rails.application.routes.draw do
  devise_for :users
  root "top#home"
  get "home"             => "users#home"
  get "settings/profile" => "users#profile"
  get "creators/top" => "creators#home"
  get "create/1" => "creators#create_name"
  get "create/2" => "creators#create_creating_things"
  get "create/3" => "creators#create_genre"
  get "create/4" => "creators#create_adult"
  get "create/5" => "creators#create_done"
  patch "/users/update/name" => "users#update_name"
  post "/creators/create" => "creators#create"
  patch "creators/update/genre" => "creators#update_genre"
  patch "creators/update/adult" => "creators#update_adult"

  resources :users, only: [:update]
end
