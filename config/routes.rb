Yelpdemo::Application.routes.draw do
  resources :reviews, except: [:show, :index]

  devise_for :users
  resources :restaurants do
    resources :reviews, expect: [:show, :index]
  end

  get "pages/about"
  get "pages/contact"

  root "restaurants#index"
 end  