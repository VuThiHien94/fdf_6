Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  get "help" => "static_pages#help"
  get "about" => "static_pages#about"
  get "contact" => "static_pages#contact"

  resources :users
  resources :products, only: [:index, :show]
  namespace :admin do
    resources :users
    resources :categories
  end
end
