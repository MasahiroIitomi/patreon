Rails.application.routes.draw do
  devise_for :users
  root "top#home"
  get "search"                         => "top#search"
  get "home"                           => "users#home"
  get "settings/profile"               => "users#profile"
  get "create/1"                       => "creators#create_name"
  get "create/2"                       => "creators#create_creating_things"
  get "create/3"                       => "creators#create_genre"
  get "create/4"                       => "creators#create_adult"
  get "create/5"                       => "creators#create_done"
  patch "/users/update/name"           => "users#update_name"
  get "creators/:id/top"               => "creators#home"
  post "/creators/create"              => "creators#create"
  patch "creators/update/genre"        => "creators#update_genre"
  patch "creators/update/adult"        => "creators#update_adult"
  get "creators/:id/about"             => "creators#edit_about"
  patch "creators/:id/edit"            => "creators#user_update"
  get "posts"                          => "posts#select"
  get "posts/text/edit"                => "posts#text_create"
  get "posts/text/:id/edit/text"       => "posts#edit"
  post "follows/:creator_id/create"    => "follows#create"
  delete "follows/:creator_id/destroy" => "follows#destroy"

  resources :users, only: [:update]
  resources :creators, only: [:edit, :update, :destroy]
  resources :posts, only: [:create, :destroy, :update]
end
