Rails.application.routes.draw do
  devise_for :users
  root "top#home"
  get "home" => "users#home"
end
