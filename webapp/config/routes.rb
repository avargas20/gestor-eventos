Rails.application.routes.draw do
  get 'welcome/index'
  resources :users
  resources :events
  resources :modalities
  resources :categories
  resources :sessions, only: [:new, :create, :destroy]
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  root :to => "events#index"
end
