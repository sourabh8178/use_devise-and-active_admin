Rails.application.routes.draw do
 
  get "/articles", to: "articles#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "items#index"
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
